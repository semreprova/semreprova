using System;
using System.Data;
using System.Data.SqlClient;
using OfficeOpenXml;

namespace SQLToExcelDashboard
{
    class Program
    {
        static void Main(string[] args)
        {
            string connectionString = "your_connection_string_here";
            string query = "SELECT * FROM YourTable";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    dataAdapter.Fill(dataTable);

                    CreateExcelDashboard(dataTable);
                }
            }
        }

        static void CreateExcelDashboard(DataTable data)
        {
            using (ExcelPackage excelPackage = new ExcelPackage())
            {
                var worksheet = excelPackage.Workbook.Worksheets.Add("Dashboard");

                // Configurar o cabeçalho do dashboard
                int row = 1;
                int col = 1;
                foreach (DataColumn column in data.Columns)
                {
                    worksheet.Cells[row, col].Value = column.ColumnName;
                    col++;
                }

                // Preencher os dados do dashboard
                row = 2;
                foreach (DataRow dr in data.Rows)
                {
                    col = 1;
                    foreach (DataColumn column in data.Columns)
                    {
                        worksheet.Cells[row, col].Value = dr[column.ColumnName];
                        col++;
                    }
                    row++;
                }

                // Salvar o arquivo Excel
                string excelFileName = "Dashboard.xlsx";
                excelPackage.SaveAs(new System.IO.FileInfo(excelFileName));
                Console.WriteLine($"Dashboard gerado com sucesso: {excelFileName}");
            }
        }
    }
}