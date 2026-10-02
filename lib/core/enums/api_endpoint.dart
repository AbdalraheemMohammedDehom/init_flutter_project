const String kSupabaseAnonKey =
    'sb_publishable_Dm4_OH0ynjy5gz29g_SiHA_1_jon02O';

enum ApiEndpoint {
  // 👇 كل endpoint جديد: بس ضيف سطر هنا بنفس الشكل
  // ApiEndpoint(اسم_القيمة, 'الرابط الكامل', يحتاج_توكن)
  login(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/rapid-handler',
    requiresAuth: false,
  ),
  loginV2(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/login_store_user_v2',
    requiresAuth: false,
  ),
  createStore(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/create_new_store_user',
    requiresAuth: true,
  ),
  createStoreV2(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/create-store-tenant-v2',
    requiresAuth: true,
  ),
  addProduct(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/add_product',
    requiresAuth: true,
  ),
  addProductV2(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/add-product-v2',
    requiresAuth: true,
  ),
  addProductV3(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/add_product_v3',
    requiresAuth: true,
  ),
  getProducts(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get_products',
    requiresAuth: true,
  ),
  getProductsV2(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-products-v2',
    requiresAuth: true,
  ),
  getProductsPagenation(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-products-pagination',
    requiresAuth: true,
  ),
  editProduct(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/edit_product',
    requiresAuth: true,
  ),
  editProductV2(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/update-product-v2',
    requiresAuth: true,
  ),
  editProductV3(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/update-product-v3',
    requiresAuth: true,
  ),
  deleteProduct(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/delete_product',
    requiresAuth: true,
  ),
  getProductsMovements(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-product-movements',
    requiresAuth: true,
  ),
  getOrders(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-order',
    requiresAuth: true,
  ),
  addOrder(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/add-order',
    requiresAuth: true,
  ),
  addOrderV2(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/add-order-v2',
    requiresAuth: true,
  ),
  getOrdersV2(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-orders-v2',
    requiresAuth: true,
  ),
  editOrder(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/edit-order',
    requiresAuth: true,
  ),
  returnOrder(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/return-order',
    requiresAuth: true,
  ),
  productDamaged(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/product-dameg',
    requiresAuth: true,
  ),
  addExpense(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/add-expense',
    requiresAuth: true,
  ),
  editExpense(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/edit-expense',
    requiresAuth: true,
  ),
  deleteExpense(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/delete-expense',
    requiresAuth: true,
  ),
  getExpenses(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-expenses',
    requiresAuth: true,
  ),
  getPublicStore(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-public-store',
    requiresAuth: false,
  ),
  getPublicProducts(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-public-products',
    requiresAuth: false,
  ),
  addPublicOrder(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/add-public-order',
    requiresAuth: false,
  ),
  addStoreSettings(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/add-store-settings',
    requiresAuth: true,
  ),
  updateStoreSettings(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/update-store-settings',
    requiresAuth: true,
  ),
  getTenantLogo(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get_tenant_logo',
    requiresAuth: true,
  ),
  getStoreAttributes(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/store_type_attributes',
    requiresAuth: true,
  ),
  getCategoriesPaginated(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-categories-pagination',
    requiresAuth: true,
  ),
  addCategory(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/add-category',
    requiresAuth: true,
  ),
  updateCategory(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/update-category',
    requiresAuth: true,
  ),
  updateCategoryStatus(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/update-category-status',
    requiresAuth: true,
  ),
  getPublicCategories(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-public-categories',
    requiresAuth: false,
  ),
  getStoreSettings(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-store-settings',
    requiresAuth: true,
  ),
  getUserByShemaName(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-user-by-schema',
    requiresAuth: true,
  ),
  getDashboardAnalytics(
    'https://dnqkbsatbpunrgviffen.supabase.co/functions/v1/get-dashboard-analytics',
    requiresAuth: true,
  );

  const ApiEndpoint(this.url, {required this.requiresAuth});

  /// الرابط الكامل الجاهز للاستخدام مباشرة
  final String url;

  /// هل هذا الـ endpoint يحتاج توكن؟
  final bool requiresAuth;
}
