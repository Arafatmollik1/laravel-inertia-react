set -e
echo "Deploying application..."

# Enter maintenance mode
(php artisan down --message="Upgrading application. We will be back soon.") || true
# Update codebase
git pull origin master
# Exit maintenance mode
php artisan up

echo "Application deployed!"
