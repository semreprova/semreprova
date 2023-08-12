bash
composer require laravel/sqlite-encrypt

php
'connections' => [
    'sqlite_encrypt' => [
        'driver' => 'sqlite_encrypt',
        'database' => env('DB_DATABASE', database_path('database.sqlite')),
        'key' => env('DB_ENCRYPTION_KEY'),
    ],
],

.env
DB_CONNECTION=sqlite_encrypt
DB_ENCRYPTION_KEY=your_encryption_key_here

bash
php artisan make:model Admin

php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\SQLiteEncrypt\Traits\SQLiteEncryptable;

class Admin extends Model
{
    use SoftDeletes, SQLiteEncryptable;

    protected $encryptable = ['login', 'password'];

    // Restante das configurações do modelo...
}
