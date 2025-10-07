import Foundation












public extension PlatformClient.Catalog {

    enum PageType: String, Codable, CaseIterable {
        
        case aboutUs = "about-us"
        case addresses = "addresses"
        case blog = "blog"
        case brands = "brands"
        case cards = "cards"
        case cart = "cart"
        case categories = "categories"
        case brand = "brand"
        case category = "category"
        case collection = "collection"
        case collections = "collections"
        case contactUs = "contact-us"
        case external = "external"
        case custom = "custom"
        case faq = "faq"
        case freshchat = "freshchat"
        case home = "home"
        case notificationSettings = "notification-settings"
        case orders = "orders"
        case page = "page"
        case policy = "policy"
        case product = "product"
        case productRequest = "product-request"
        case products = "products"
        case profile = "profile"
        case profileOrderShipment = "profile-order-shipment"
        case profileBasic = "profile-basic"
        case profileCompany = "profile-company"
        case profileEmails = "profile-emails"
        case profilePhones = "profile-phones"
        case rateUs = "rate-us"
        case referEarn = "refer-earn"
        case settings = "settings"
        case sharedCart = "shared-cart"
        case tnc = "tnc"
        case trackOrder = "track-order"
        case wishlist = "wishlist"
        case sections = "sections"
        case form = "form"
        case cartDelivery = "cart-delivery"
        case cartPayment = "cart-payment"
        case cartReview = "cart-review"
        case login = "login"
        case register = "register"
        case shippingPolicy = "shipping-policy"
        case returnPolicy = "return-policy"
        case orderStatus = "order-status"
        case locateUs = "locate-us"
        case singlePageCheckout = "single-page-checkout"

        init?(path: String) {
            let slash = CharacterSet(charactersIn: "/")
            let path = path.trimmingCharacters(in: slash)
            var allPossible: [(type: PageType, link: String)] = []
            for type in PageType.allCases {
                allPossible.append((type: type, link: type.link.trimmingCharacters(in: slash)))
                var possibleLink = type.link
                for params in type.pathParams where !params.required {
                    possibleLink = possibleLink.replacingOccurrences(of: ":\(params.name)", with: "")
                }
                possibleLink = possibleLink.replacingOccurrences(of: "//", with: "/")
                allPossible.append((type: type, link: possibleLink.trimmingCharacters(in: slash)))
            }
            allPossible = allPossible.sorted{$0.link.count > $1.link.count}
            var match = allPossible.first(where: {$0.link == path})
            for possible in allPossible {
                if match != nil {
                    break
                }
                let pathComp = path.split(separator: "/")
                let typeComp = possible.link.split(separator: "/")
                if pathComp.count == typeComp.count {
                    var paramsCount = 0
                    var matchCount = 0
                    for i in 0..<pathComp.count {
                        if typeComp[i].starts(with: ":") {
                            paramsCount += 1
                        } else if typeComp[i] == pathComp[i] {
                            matchCount += 1
                        }
                    }
                    if (paramsCount + matchCount == pathComp.count) {
                        match = possible
                    }
                }
            }
            if let bestMatch = match {
                self = bestMatch.type
            } else {
                return nil
            }
        }
        
        public var link: String {
            switch self { 
            
            case .aboutUs:
                return "/about-us"
            case .addresses:
                return "/profile/address"
            case .blog:
                return "/blog/:slug"
            case .brands:
                return "/brands/:department"
            case .cards:
                return "/profile/my-cards"
            case .cart:
                return "/cart/bag/"
            case .categories:
                return "/categories/:department"
            case .brand:
                return "/brand/:slug"
            case .category:
                return "/category/:slug"
            case .collection:
                return "/collection/:slug"
            case .collections:
                return "/collections/"
            case .contactUs:
                return "/contact-us/"
            case .external:
                return "/external/"
            case .custom:
                return "/c/"
            case .faq:
                return "/faq"
            case .freshchat:
                return "/freshchat"
            case .home:
                return "/"
            case .notificationSettings:
                return "/notification-settings"
            case .orders:
                return "/profile/orders"
            case .page:
                return "/page/:slug"
            case .policy:
                return "/privacy-policy"
            case .product:
                return "/product/:slug"
            case .productRequest:
                return "/product-request/"
            case .products:
                return "/products/"
            case .profile:
                return "/profile"
            case .profileOrderShipment:
                return "/profile/orders/shipment/:shipmentid"
            case .profileBasic:
                return "/profile/details"
            case .profileCompany:
                return "/profile/company"
            case .profileEmails:
                return "/profile/email"
            case .profilePhones:
                return "/profile/phone"
            case .rateUs:
                return "/rate-us"
            case .referEarn:
                return "/profile/refer-earn"
            case .settings:
                return "/setting/currency"
            case .sharedCart:
                return "/shared-cart/:token"
            case .tnc:
                return "/terms-and-conditions"
            case .trackOrder:
                return "/order-tracking/:orderId"
            case .wishlist:
                return "/wishlist/"
            case .sections:
                return "/sections/:group"
            case .form:
                return "/form/:slug"
            case .cartDelivery:
                return "/cart/delivery"
            case .cartPayment:
                return "/cart/payment-info"
            case .cartReview:
                return "/cart/order-review"
            case .login:
                return "/auth/login"
            case .register:
                return "/auth/register"
            case .shippingPolicy:
                return "/shipping-policy"
            case .returnPolicy:
                return "/return-policy"
            case .orderStatus:
                return "/cart/order-status"
            case .locateUs:
                return "/locate-us"
            case .singlePageCheckout:
                return "/cart/checkout"
            }
        }

        public var name: String {
            switch self { 
            
            case .aboutUs:
                return "About Us"
            case .addresses:
                return "Saved Addresses"
            case .blog:
                return "Blog"
            case .brands:
                return "Brands"
            case .cards:
                return "Saved Cards"
            case .cart:
                return "Cart"
            case .categories:
                return "Categories"
            case .brand:
                return "Brand"
            case .category:
                return "Category"
            case .collection:
                return "Collection"
            case .collections:
                return "Collections"
            case .contactUs:
                return "Contact Us"
            case .external:
                return "External Link"
            case .custom:
                return "Custom theme link"
            case .faq:
                return "FAQ"
            case .freshchat:
                return "Chat by Freshchat"
            case .home:
                return "Home"
            case .notificationSettings:
                return "Notification Settings"
            case .orders:
                return "Orders"
            case .page:
                return "Page"
            case .policy:
                return "Privacy Policy"
            case .product:
                return "Product"
            case .productRequest:
                return "Product Request"
            case .products:
                return "Products"
            case .profile:
                return "Profile"
            case .profileOrderShipment:
                return "profile orders shipment"
            case .profileBasic:
                return "Basic Profile"
            case .profileCompany:
                return "Profile Company"
            case .profileEmails:
                return "Profile Emails"
            case .profilePhones:
                return "Profile Phones"
            case .rateUs:
                return "Rate Us"
            case .referEarn:
                return "Refer & Earn"
            case .settings:
                return "Settings"
            case .sharedCart:
                return "Shared Cart"
            case .tnc:
                return "Terms and Conditions"
            case .trackOrder:
                return "Track Order"
            case .wishlist:
                return "Wishlist"
            case .sections:
                return "Sections"
            case .form:
                return "Form"
            case .cartDelivery:
                return "Cart Delivery"
            case .cartPayment:
                return "Cart Payment Information"
            case .cartReview:
                return "Cart Order Review"
            case .login:
                return "Login"
            case .register:
                return "Register"
            case .shippingPolicy:
                return "Shipping policy"
            case .returnPolicy:
                return "Return policy"
            case .orderStatus:
                return "Order status"
            case .locateUs:
                return "Locate us"
            case .singlePageCheckout:
                return "Single Page Checkout"
            }
        }

        public var pathParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return [(name: "slug", required: false)]
            case .brands:
                return [(name: "department", required: false)]
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return [(name: "department", required: false)]
            case .brand:
                return [(name: "slug", required: true)]
            case .category:
                return [(name: "slug", required: true)]
            case .collection:
                return [(name: "slug", required: true)]
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return []
            case .custom:
                return []
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return [(name: "slug", required: true)]
            case .policy:
                return []
            case .product:
                return [(name: "slug", required: true)]
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return [(name: "shipmentid", required: true)]
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return [(name: "token", required: true)]
            case .tnc:
                return []
            case .trackOrder:
                return [(name: "orderId", required: false)]
            case .wishlist:
                return []
            case .sections:
                return [(name: "group", required: true)]
            case .form:
                return [(name: "slug", required: true)]
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }

        public var queryParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return []
            case .brands:
                return []
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return []
            case .brand:
                return []
            case .category:
                return []
            case .collection:
                return []
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return [(name: "url", required: true)]
            case .custom:
                return [(name: "url", required: true)]
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return []
            case .policy:
                return []
            case .product:
                return []
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return []
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return []
            case .tnc:
                return []
            case .trackOrder:
                return []
            case .wishlist:
                return []
            case .sections:
                return []
            case .form:
                return []
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }
    }
}



public extension PlatformClient.ApplicationClient.Catalog {

    enum PageType: String, Codable, CaseIterable {
        
        case aboutUs = "about-us"
        case addresses = "addresses"
        case blog = "blog"
        case brands = "brands"
        case cards = "cards"
        case cart = "cart"
        case categories = "categories"
        case brand = "brand"
        case category = "category"
        case collection = "collection"
        case collections = "collections"
        case contactUs = "contact-us"
        case external = "external"
        case custom = "custom"
        case faq = "faq"
        case freshchat = "freshchat"
        case home = "home"
        case notificationSettings = "notification-settings"
        case orders = "orders"
        case page = "page"
        case policy = "policy"
        case product = "product"
        case productRequest = "product-request"
        case products = "products"
        case profile = "profile"
        case profileOrderShipment = "profile-order-shipment"
        case profileBasic = "profile-basic"
        case profileCompany = "profile-company"
        case profileEmails = "profile-emails"
        case profilePhones = "profile-phones"
        case rateUs = "rate-us"
        case referEarn = "refer-earn"
        case settings = "settings"
        case sharedCart = "shared-cart"
        case tnc = "tnc"
        case trackOrder = "track-order"
        case wishlist = "wishlist"
        case sections = "sections"
        case form = "form"
        case cartDelivery = "cart-delivery"
        case cartPayment = "cart-payment"
        case cartReview = "cart-review"
        case login = "login"
        case register = "register"
        case shippingPolicy = "shipping-policy"
        case returnPolicy = "return-policy"
        case orderStatus = "order-status"
        case locateUs = "locate-us"
        case singlePageCheckout = "single-page-checkout"

        init?(path: String) {
            let slash = CharacterSet(charactersIn: "/")
            let path = path.trimmingCharacters(in: slash)
            var allPossible: [(type: PageType, link: String)] = []
            for type in PageType.allCases {
                allPossible.append((type: type, link: type.link.trimmingCharacters(in: slash)))
                var possibleLink = type.link
                for params in type.pathParams where !params.required {
                    possibleLink = possibleLink.replacingOccurrences(of: ":\(params.name)", with: "")
                }
                possibleLink = possibleLink.replacingOccurrences(of: "//", with: "/")
                allPossible.append((type: type, link: possibleLink.trimmingCharacters(in: slash)))
            }
            allPossible = allPossible.sorted{$0.link.count > $1.link.count}
            var match = allPossible.first(where: {$0.link == path})
            for possible in allPossible {
                if match != nil {
                    break
                }
                let pathComp = path.split(separator: "/")
                let typeComp = possible.link.split(separator: "/")
                if pathComp.count == typeComp.count {
                    var paramsCount = 0
                    var matchCount = 0
                    for i in 0..<pathComp.count {
                        if typeComp[i].starts(with: ":") {
                            paramsCount += 1
                        } else if typeComp[i] == pathComp[i] {
                            matchCount += 1
                        }
                    }
                    if (paramsCount + matchCount == pathComp.count) {
                        match = possible
                    }
                }
            }
            if let bestMatch = match {
                self = bestMatch.type
            } else {
                return nil
            }
        }
        
        public var link: String {
            switch self { 
            
            case .aboutUs:
                return "/about-us"
            case .addresses:
                return "/profile/address"
            case .blog:
                return "/blog/:slug"
            case .brands:
                return "/brands/:department"
            case .cards:
                return "/profile/my-cards"
            case .cart:
                return "/cart/bag/"
            case .categories:
                return "/categories/:department"
            case .brand:
                return "/brand/:slug"
            case .category:
                return "/category/:slug"
            case .collection:
                return "/collection/:slug"
            case .collections:
                return "/collections/"
            case .contactUs:
                return "/contact-us/"
            case .external:
                return "/external/"
            case .custom:
                return "/c/"
            case .faq:
                return "/faq"
            case .freshchat:
                return "/freshchat"
            case .home:
                return "/"
            case .notificationSettings:
                return "/notification-settings"
            case .orders:
                return "/profile/orders"
            case .page:
                return "/page/:slug"
            case .policy:
                return "/privacy-policy"
            case .product:
                return "/product/:slug"
            case .productRequest:
                return "/product-request/"
            case .products:
                return "/products/"
            case .profile:
                return "/profile"
            case .profileOrderShipment:
                return "/profile/orders/shipment/:shipmentid"
            case .profileBasic:
                return "/profile/details"
            case .profileCompany:
                return "/profile/company"
            case .profileEmails:
                return "/profile/email"
            case .profilePhones:
                return "/profile/phone"
            case .rateUs:
                return "/rate-us"
            case .referEarn:
                return "/profile/refer-earn"
            case .settings:
                return "/setting/currency"
            case .sharedCart:
                return "/shared-cart/:token"
            case .tnc:
                return "/terms-and-conditions"
            case .trackOrder:
                return "/order-tracking/:orderId"
            case .wishlist:
                return "/wishlist/"
            case .sections:
                return "/sections/:group"
            case .form:
                return "/form/:slug"
            case .cartDelivery:
                return "/cart/delivery"
            case .cartPayment:
                return "/cart/payment-info"
            case .cartReview:
                return "/cart/order-review"
            case .login:
                return "/auth/login"
            case .register:
                return "/auth/register"
            case .shippingPolicy:
                return "/shipping-policy"
            case .returnPolicy:
                return "/return-policy"
            case .orderStatus:
                return "/cart/order-status"
            case .locateUs:
                return "/locate-us"
            case .singlePageCheckout:
                return "/cart/checkout"
            }
        }

        public var name: String {
            switch self { 
            
            case .aboutUs:
                return "About Us"
            case .addresses:
                return "Saved Addresses"
            case .blog:
                return "Blog"
            case .brands:
                return "Brands"
            case .cards:
                return "Saved Cards"
            case .cart:
                return "Cart"
            case .categories:
                return "Categories"
            case .brand:
                return "Brand"
            case .category:
                return "Category"
            case .collection:
                return "Collection"
            case .collections:
                return "Collections"
            case .contactUs:
                return "Contact Us"
            case .external:
                return "External Link"
            case .custom:
                return "Custom theme link"
            case .faq:
                return "FAQ"
            case .freshchat:
                return "Chat by Freshchat"
            case .home:
                return "Home"
            case .notificationSettings:
                return "Notification Settings"
            case .orders:
                return "Orders"
            case .page:
                return "Page"
            case .policy:
                return "Privacy Policy"
            case .product:
                return "Product"
            case .productRequest:
                return "Product Request"
            case .products:
                return "Products"
            case .profile:
                return "Profile"
            case .profileOrderShipment:
                return "profile orders shipment"
            case .profileBasic:
                return "Basic Profile"
            case .profileCompany:
                return "Profile Company"
            case .profileEmails:
                return "Profile Emails"
            case .profilePhones:
                return "Profile Phones"
            case .rateUs:
                return "Rate Us"
            case .referEarn:
                return "Refer & Earn"
            case .settings:
                return "Settings"
            case .sharedCart:
                return "Shared Cart"
            case .tnc:
                return "Terms and Conditions"
            case .trackOrder:
                return "Track Order"
            case .wishlist:
                return "Wishlist"
            case .sections:
                return "Sections"
            case .form:
                return "Form"
            case .cartDelivery:
                return "Cart Delivery"
            case .cartPayment:
                return "Cart Payment Information"
            case .cartReview:
                return "Cart Order Review"
            case .login:
                return "Login"
            case .register:
                return "Register"
            case .shippingPolicy:
                return "Shipping policy"
            case .returnPolicy:
                return "Return policy"
            case .orderStatus:
                return "Order status"
            case .locateUs:
                return "Locate us"
            case .singlePageCheckout:
                return "Single Page Checkout"
            }
        }

        public var pathParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return [(name: "slug", required: false)]
            case .brands:
                return [(name: "department", required: false)]
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return [(name: "department", required: false)]
            case .brand:
                return [(name: "slug", required: true)]
            case .category:
                return [(name: "slug", required: true)]
            case .collection:
                return [(name: "slug", required: true)]
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return []
            case .custom:
                return []
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return [(name: "slug", required: true)]
            case .policy:
                return []
            case .product:
                return [(name: "slug", required: true)]
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return [(name: "shipmentid", required: true)]
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return [(name: "token", required: true)]
            case .tnc:
                return []
            case .trackOrder:
                return [(name: "orderId", required: false)]
            case .wishlist:
                return []
            case .sections:
                return [(name: "group", required: true)]
            case .form:
                return [(name: "slug", required: true)]
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }

        public var queryParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return []
            case .brands:
                return []
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return []
            case .brand:
                return []
            case .category:
                return []
            case .collection:
                return []
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return [(name: "url", required: true)]
            case .custom:
                return [(name: "url", required: true)]
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return []
            case .policy:
                return []
            case .product:
                return []
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return []
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return []
            case .tnc:
                return []
            case .trackOrder:
                return []
            case .wishlist:
                return []
            case .sections:
                return []
            case .form:
                return []
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }
    }
}















public extension PlatformClient.Content {

    enum PageType: String, Codable, CaseIterable {
        
        case aboutUs = "about-us"
        case addresses = "addresses"
        case blog = "blog"
        case brands = "brands"
        case cards = "cards"
        case cart = "cart"
        case categories = "categories"
        case brand = "brand"
        case category = "category"
        case collection = "collection"
        case collections = "collections"
        case contactUs = "contact-us"
        case external = "external"
        case custom = "custom"
        case faq = "faq"
        case freshchat = "freshchat"
        case home = "home"
        case notificationSettings = "notification-settings"
        case orders = "orders"
        case page = "page"
        case policy = "policy"
        case product = "product"
        case productRequest = "product-request"
        case products = "products"
        case profile = "profile"
        case profileOrderShipment = "profile-order-shipment"
        case profileBasic = "profile-basic"
        case profileCompany = "profile-company"
        case profileEmails = "profile-emails"
        case profilePhones = "profile-phones"
        case rateUs = "rate-us"
        case referEarn = "refer-earn"
        case settings = "settings"
        case sharedCart = "shared-cart"
        case tnc = "tnc"
        case trackOrder = "track-order"
        case wishlist = "wishlist"
        case sections = "sections"
        case form = "form"
        case cartDelivery = "cart-delivery"
        case cartPayment = "cart-payment"
        case cartReview = "cart-review"
        case login = "login"
        case register = "register"
        case shippingPolicy = "shipping-policy"
        case returnPolicy = "return-policy"
        case orderStatus = "order-status"
        case locateUs = "locate-us"
        case singlePageCheckout = "single-page-checkout"

        init?(path: String) {
            let slash = CharacterSet(charactersIn: "/")
            let path = path.trimmingCharacters(in: slash)
            var allPossible: [(type: PageType, link: String)] = []
            for type in PageType.allCases {
                allPossible.append((type: type, link: type.link.trimmingCharacters(in: slash)))
                var possibleLink = type.link
                for params in type.pathParams where !params.required {
                    possibleLink = possibleLink.replacingOccurrences(of: ":\(params.name)", with: "")
                }
                possibleLink = possibleLink.replacingOccurrences(of: "//", with: "/")
                allPossible.append((type: type, link: possibleLink.trimmingCharacters(in: slash)))
            }
            allPossible = allPossible.sorted{$0.link.count > $1.link.count}
            var match = allPossible.first(where: {$0.link == path})
            for possible in allPossible {
                if match != nil {
                    break
                }
                let pathComp = path.split(separator: "/")
                let typeComp = possible.link.split(separator: "/")
                if pathComp.count == typeComp.count {
                    var paramsCount = 0
                    var matchCount = 0
                    for i in 0..<pathComp.count {
                        if typeComp[i].starts(with: ":") {
                            paramsCount += 1
                        } else if typeComp[i] == pathComp[i] {
                            matchCount += 1
                        }
                    }
                    if (paramsCount + matchCount == pathComp.count) {
                        match = possible
                    }
                }
            }
            if let bestMatch = match {
                self = bestMatch.type
            } else {
                return nil
            }
        }
        
        public var link: String {
            switch self { 
            
            case .aboutUs:
                return "/about-us"
            case .addresses:
                return "/profile/address"
            case .blog:
                return "/blog/:slug"
            case .brands:
                return "/brands/:department"
            case .cards:
                return "/profile/my-cards"
            case .cart:
                return "/cart/bag/"
            case .categories:
                return "/categories/:department"
            case .brand:
                return "/brand/:slug"
            case .category:
                return "/category/:slug"
            case .collection:
                return "/collection/:slug"
            case .collections:
                return "/collections/"
            case .contactUs:
                return "/contact-us/"
            case .external:
                return "/external/"
            case .custom:
                return "/c/"
            case .faq:
                return "/faq"
            case .freshchat:
                return "/freshchat"
            case .home:
                return "/"
            case .notificationSettings:
                return "/notification-settings"
            case .orders:
                return "/profile/orders"
            case .page:
                return "/page/:slug"
            case .policy:
                return "/privacy-policy"
            case .product:
                return "/product/:slug"
            case .productRequest:
                return "/product-request/"
            case .products:
                return "/products/"
            case .profile:
                return "/profile"
            case .profileOrderShipment:
                return "/profile/orders/shipment/:shipmentid"
            case .profileBasic:
                return "/profile/details"
            case .profileCompany:
                return "/profile/company"
            case .profileEmails:
                return "/profile/email"
            case .profilePhones:
                return "/profile/phone"
            case .rateUs:
                return "/rate-us"
            case .referEarn:
                return "/profile/refer-earn"
            case .settings:
                return "/setting/currency"
            case .sharedCart:
                return "/shared-cart/:token"
            case .tnc:
                return "/terms-and-conditions"
            case .trackOrder:
                return "/order-tracking/:orderId"
            case .wishlist:
                return "/wishlist/"
            case .sections:
                return "/sections/:group"
            case .form:
                return "/form/:slug"
            case .cartDelivery:
                return "/cart/delivery"
            case .cartPayment:
                return "/cart/payment-info"
            case .cartReview:
                return "/cart/order-review"
            case .login:
                return "/auth/login"
            case .register:
                return "/auth/register"
            case .shippingPolicy:
                return "/shipping-policy"
            case .returnPolicy:
                return "/return-policy"
            case .orderStatus:
                return "/cart/order-status"
            case .locateUs:
                return "/locate-us"
            case .singlePageCheckout:
                return "/cart/checkout"
            }
        }

        public var name: String {
            switch self { 
            
            case .aboutUs:
                return "About Us"
            case .addresses:
                return "Saved Addresses"
            case .blog:
                return "Blog"
            case .brands:
                return "Brands"
            case .cards:
                return "Saved Cards"
            case .cart:
                return "Cart"
            case .categories:
                return "Categories"
            case .brand:
                return "Brand"
            case .category:
                return "Category"
            case .collection:
                return "Collection"
            case .collections:
                return "Collections"
            case .contactUs:
                return "Contact Us"
            case .external:
                return "External Link"
            case .custom:
                return "Custom theme link"
            case .faq:
                return "FAQ"
            case .freshchat:
                return "Chat by Freshchat"
            case .home:
                return "Home"
            case .notificationSettings:
                return "Notification Settings"
            case .orders:
                return "Orders"
            case .page:
                return "Page"
            case .policy:
                return "Privacy Policy"
            case .product:
                return "Product"
            case .productRequest:
                return "Product Request"
            case .products:
                return "Products"
            case .profile:
                return "Profile"
            case .profileOrderShipment:
                return "profile orders shipment"
            case .profileBasic:
                return "Basic Profile"
            case .profileCompany:
                return "Profile Company"
            case .profileEmails:
                return "Profile Emails"
            case .profilePhones:
                return "Profile Phones"
            case .rateUs:
                return "Rate Us"
            case .referEarn:
                return "Refer & Earn"
            case .settings:
                return "Settings"
            case .sharedCart:
                return "Shared Cart"
            case .tnc:
                return "Terms and Conditions"
            case .trackOrder:
                return "Track Order"
            case .wishlist:
                return "Wishlist"
            case .sections:
                return "Sections"
            case .form:
                return "Form"
            case .cartDelivery:
                return "Cart Delivery"
            case .cartPayment:
                return "Cart Payment Information"
            case .cartReview:
                return "Cart Order Review"
            case .login:
                return "Login"
            case .register:
                return "Register"
            case .shippingPolicy:
                return "Shipping policy"
            case .returnPolicy:
                return "Return policy"
            case .orderStatus:
                return "Order status"
            case .locateUs:
                return "Locate us"
            case .singlePageCheckout:
                return "Single Page Checkout"
            }
        }

        public var pathParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return [(name: "slug", required: false)]
            case .brands:
                return [(name: "department", required: false)]
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return [(name: "department", required: false)]
            case .brand:
                return [(name: "slug", required: true)]
            case .category:
                return [(name: "slug", required: true)]
            case .collection:
                return [(name: "slug", required: true)]
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return []
            case .custom:
                return []
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return [(name: "slug", required: true)]
            case .policy:
                return []
            case .product:
                return [(name: "slug", required: true)]
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return [(name: "shipmentid", required: true)]
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return [(name: "token", required: true)]
            case .tnc:
                return []
            case .trackOrder:
                return [(name: "orderId", required: false)]
            case .wishlist:
                return []
            case .sections:
                return [(name: "group", required: true)]
            case .form:
                return [(name: "slug", required: true)]
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }

        public var queryParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return []
            case .brands:
                return []
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return []
            case .brand:
                return []
            case .category:
                return []
            case .collection:
                return []
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return [(name: "url", required: true)]
            case .custom:
                return [(name: "url", required: true)]
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return []
            case .policy:
                return []
            case .product:
                return []
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return []
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return []
            case .tnc:
                return []
            case .trackOrder:
                return []
            case .wishlist:
                return []
            case .sections:
                return []
            case .form:
                return []
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }
    }
}



public extension PlatformClient.ApplicationClient.Content {

    enum PageType: String, Codable, CaseIterable {
        
        case aboutUs = "about-us"
        case addresses = "addresses"
        case blog = "blog"
        case brands = "brands"
        case cards = "cards"
        case cart = "cart"
        case categories = "categories"
        case brand = "brand"
        case category = "category"
        case collection = "collection"
        case collections = "collections"
        case contactUs = "contact-us"
        case external = "external"
        case custom = "custom"
        case faq = "faq"
        case freshchat = "freshchat"
        case home = "home"
        case notificationSettings = "notification-settings"
        case orders = "orders"
        case page = "page"
        case policy = "policy"
        case product = "product"
        case productRequest = "product-request"
        case products = "products"
        case profile = "profile"
        case profileOrderShipment = "profile-order-shipment"
        case profileBasic = "profile-basic"
        case profileCompany = "profile-company"
        case profileEmails = "profile-emails"
        case profilePhones = "profile-phones"
        case rateUs = "rate-us"
        case referEarn = "refer-earn"
        case settings = "settings"
        case sharedCart = "shared-cart"
        case tnc = "tnc"
        case trackOrder = "track-order"
        case wishlist = "wishlist"
        case sections = "sections"
        case form = "form"
        case cartDelivery = "cart-delivery"
        case cartPayment = "cart-payment"
        case cartReview = "cart-review"
        case login = "login"
        case register = "register"
        case shippingPolicy = "shipping-policy"
        case returnPolicy = "return-policy"
        case orderStatus = "order-status"
        case locateUs = "locate-us"
        case singlePageCheckout = "single-page-checkout"

        init?(path: String) {
            let slash = CharacterSet(charactersIn: "/")
            let path = path.trimmingCharacters(in: slash)
            var allPossible: [(type: PageType, link: String)] = []
            for type in PageType.allCases {
                allPossible.append((type: type, link: type.link.trimmingCharacters(in: slash)))
                var possibleLink = type.link
                for params in type.pathParams where !params.required {
                    possibleLink = possibleLink.replacingOccurrences(of: ":\(params.name)", with: "")
                }
                possibleLink = possibleLink.replacingOccurrences(of: "//", with: "/")
                allPossible.append((type: type, link: possibleLink.trimmingCharacters(in: slash)))
            }
            allPossible = allPossible.sorted{$0.link.count > $1.link.count}
            var match = allPossible.first(where: {$0.link == path})
            for possible in allPossible {
                if match != nil {
                    break
                }
                let pathComp = path.split(separator: "/")
                let typeComp = possible.link.split(separator: "/")
                if pathComp.count == typeComp.count {
                    var paramsCount = 0
                    var matchCount = 0
                    for i in 0..<pathComp.count {
                        if typeComp[i].starts(with: ":") {
                            paramsCount += 1
                        } else if typeComp[i] == pathComp[i] {
                            matchCount += 1
                        }
                    }
                    if (paramsCount + matchCount == pathComp.count) {
                        match = possible
                    }
                }
            }
            if let bestMatch = match {
                self = bestMatch.type
            } else {
                return nil
            }
        }
        
        public var link: String {
            switch self { 
            
            case .aboutUs:
                return "/about-us"
            case .addresses:
                return "/profile/address"
            case .blog:
                return "/blog/:slug"
            case .brands:
                return "/brands/:department"
            case .cards:
                return "/profile/my-cards"
            case .cart:
                return "/cart/bag/"
            case .categories:
                return "/categories/:department"
            case .brand:
                return "/brand/:slug"
            case .category:
                return "/category/:slug"
            case .collection:
                return "/collection/:slug"
            case .collections:
                return "/collections/"
            case .contactUs:
                return "/contact-us/"
            case .external:
                return "/external/"
            case .custom:
                return "/c/"
            case .faq:
                return "/faq"
            case .freshchat:
                return "/freshchat"
            case .home:
                return "/"
            case .notificationSettings:
                return "/notification-settings"
            case .orders:
                return "/profile/orders"
            case .page:
                return "/page/:slug"
            case .policy:
                return "/privacy-policy"
            case .product:
                return "/product/:slug"
            case .productRequest:
                return "/product-request/"
            case .products:
                return "/products/"
            case .profile:
                return "/profile"
            case .profileOrderShipment:
                return "/profile/orders/shipment/:shipmentid"
            case .profileBasic:
                return "/profile/details"
            case .profileCompany:
                return "/profile/company"
            case .profileEmails:
                return "/profile/email"
            case .profilePhones:
                return "/profile/phone"
            case .rateUs:
                return "/rate-us"
            case .referEarn:
                return "/profile/refer-earn"
            case .settings:
                return "/setting/currency"
            case .sharedCart:
                return "/shared-cart/:token"
            case .tnc:
                return "/terms-and-conditions"
            case .trackOrder:
                return "/order-tracking/:orderId"
            case .wishlist:
                return "/wishlist/"
            case .sections:
                return "/sections/:group"
            case .form:
                return "/form/:slug"
            case .cartDelivery:
                return "/cart/delivery"
            case .cartPayment:
                return "/cart/payment-info"
            case .cartReview:
                return "/cart/order-review"
            case .login:
                return "/auth/login"
            case .register:
                return "/auth/register"
            case .shippingPolicy:
                return "/shipping-policy"
            case .returnPolicy:
                return "/return-policy"
            case .orderStatus:
                return "/cart/order-status"
            case .locateUs:
                return "/locate-us"
            case .singlePageCheckout:
                return "/cart/checkout"
            }
        }

        public var name: String {
            switch self { 
            
            case .aboutUs:
                return "About Us"
            case .addresses:
                return "Saved Addresses"
            case .blog:
                return "Blog"
            case .brands:
                return "Brands"
            case .cards:
                return "Saved Cards"
            case .cart:
                return "Cart"
            case .categories:
                return "Categories"
            case .brand:
                return "Brand"
            case .category:
                return "Category"
            case .collection:
                return "Collection"
            case .collections:
                return "Collections"
            case .contactUs:
                return "Contact Us"
            case .external:
                return "External Link"
            case .custom:
                return "Custom theme link"
            case .faq:
                return "FAQ"
            case .freshchat:
                return "Chat by Freshchat"
            case .home:
                return "Home"
            case .notificationSettings:
                return "Notification Settings"
            case .orders:
                return "Orders"
            case .page:
                return "Page"
            case .policy:
                return "Privacy Policy"
            case .product:
                return "Product"
            case .productRequest:
                return "Product Request"
            case .products:
                return "Products"
            case .profile:
                return "Profile"
            case .profileOrderShipment:
                return "profile orders shipment"
            case .profileBasic:
                return "Basic Profile"
            case .profileCompany:
                return "Profile Company"
            case .profileEmails:
                return "Profile Emails"
            case .profilePhones:
                return "Profile Phones"
            case .rateUs:
                return "Rate Us"
            case .referEarn:
                return "Refer & Earn"
            case .settings:
                return "Settings"
            case .sharedCart:
                return "Shared Cart"
            case .tnc:
                return "Terms and Conditions"
            case .trackOrder:
                return "Track Order"
            case .wishlist:
                return "Wishlist"
            case .sections:
                return "Sections"
            case .form:
                return "Form"
            case .cartDelivery:
                return "Cart Delivery"
            case .cartPayment:
                return "Cart Payment Information"
            case .cartReview:
                return "Cart Order Review"
            case .login:
                return "Login"
            case .register:
                return "Register"
            case .shippingPolicy:
                return "Shipping policy"
            case .returnPolicy:
                return "Return policy"
            case .orderStatus:
                return "Order status"
            case .locateUs:
                return "Locate us"
            case .singlePageCheckout:
                return "Single Page Checkout"
            }
        }

        public var pathParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return [(name: "slug", required: false)]
            case .brands:
                return [(name: "department", required: false)]
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return [(name: "department", required: false)]
            case .brand:
                return [(name: "slug", required: true)]
            case .category:
                return [(name: "slug", required: true)]
            case .collection:
                return [(name: "slug", required: true)]
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return []
            case .custom:
                return []
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return [(name: "slug", required: true)]
            case .policy:
                return []
            case .product:
                return [(name: "slug", required: true)]
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return [(name: "shipmentid", required: true)]
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return [(name: "token", required: true)]
            case .tnc:
                return []
            case .trackOrder:
                return [(name: "orderId", required: false)]
            case .wishlist:
                return []
            case .sections:
                return [(name: "group", required: true)]
            case .form:
                return [(name: "slug", required: true)]
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }

        public var queryParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return []
            case .brands:
                return []
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return []
            case .brand:
                return []
            case .category:
                return []
            case .collection:
                return []
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return [(name: "url", required: true)]
            case .custom:
                return [(name: "url", required: true)]
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return []
            case .policy:
                return []
            case .product:
                return []
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return []
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return []
            case .tnc:
                return []
            case .trackOrder:
                return []
            case .wishlist:
                return []
            case .sections:
                return []
            case .form:
                return []
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }
    }
}

























public extension PlatformClient.Theme {

    enum PageType: String, Codable, CaseIterable {
        
        case aboutUs = "about-us"
        case addresses = "addresses"
        case blog = "blog"
        case brands = "brands"
        case cards = "cards"
        case cart = "cart"
        case categories = "categories"
        case brand = "brand"
        case category = "category"
        case collection = "collection"
        case collections = "collections"
        case contactUs = "contact-us"
        case external = "external"
        case custom = "custom"
        case faq = "faq"
        case freshchat = "freshchat"
        case home = "home"
        case notificationSettings = "notification-settings"
        case orders = "orders"
        case page = "page"
        case policy = "policy"
        case product = "product"
        case productRequest = "product-request"
        case products = "products"
        case profile = "profile"
        case profileOrderShipment = "profile-order-shipment"
        case profileBasic = "profile-basic"
        case profileCompany = "profile-company"
        case profileEmails = "profile-emails"
        case profilePhones = "profile-phones"
        case rateUs = "rate-us"
        case referEarn = "refer-earn"
        case settings = "settings"
        case sharedCart = "shared-cart"
        case tnc = "tnc"
        case trackOrder = "track-order"
        case wishlist = "wishlist"
        case sections = "sections"
        case form = "form"
        case cartDelivery = "cart-delivery"
        case cartPayment = "cart-payment"
        case cartReview = "cart-review"
        case login = "login"
        case register = "register"
        case shippingPolicy = "shipping-policy"
        case returnPolicy = "return-policy"
        case orderStatus = "order-status"
        case locateUs = "locate-us"
        case singlePageCheckout = "single-page-checkout"

        init?(path: String) {
            let slash = CharacterSet(charactersIn: "/")
            let path = path.trimmingCharacters(in: slash)
            var allPossible: [(type: PageType, link: String)] = []
            for type in PageType.allCases {
                allPossible.append((type: type, link: type.link.trimmingCharacters(in: slash)))
                var possibleLink = type.link
                for params in type.pathParams where !params.required {
                    possibleLink = possibleLink.replacingOccurrences(of: ":\(params.name)", with: "")
                }
                possibleLink = possibleLink.replacingOccurrences(of: "//", with: "/")
                allPossible.append((type: type, link: possibleLink.trimmingCharacters(in: slash)))
            }
            allPossible = allPossible.sorted{$0.link.count > $1.link.count}
            var match = allPossible.first(where: {$0.link == path})
            for possible in allPossible {
                if match != nil {
                    break
                }
                let pathComp = path.split(separator: "/")
                let typeComp = possible.link.split(separator: "/")
                if pathComp.count == typeComp.count {
                    var paramsCount = 0
                    var matchCount = 0
                    for i in 0..<pathComp.count {
                        if typeComp[i].starts(with: ":") {
                            paramsCount += 1
                        } else if typeComp[i] == pathComp[i] {
                            matchCount += 1
                        }
                    }
                    if (paramsCount + matchCount == pathComp.count) {
                        match = possible
                    }
                }
            }
            if let bestMatch = match {
                self = bestMatch.type
            } else {
                return nil
            }
        }
        
        public var link: String {
            switch self { 
            
            case .aboutUs:
                return "/about-us"
            case .addresses:
                return "/profile/address"
            case .blog:
                return "/blog/:slug"
            case .brands:
                return "/brands/:department"
            case .cards:
                return "/profile/my-cards"
            case .cart:
                return "/cart/bag/"
            case .categories:
                return "/categories/:department"
            case .brand:
                return "/brand/:slug"
            case .category:
                return "/category/:slug"
            case .collection:
                return "/collection/:slug"
            case .collections:
                return "/collections/"
            case .contactUs:
                return "/contact-us/"
            case .external:
                return "/external/"
            case .custom:
                return "/c/"
            case .faq:
                return "/faq"
            case .freshchat:
                return "/freshchat"
            case .home:
                return "/"
            case .notificationSettings:
                return "/notification-settings"
            case .orders:
                return "/profile/orders"
            case .page:
                return "/page/:slug"
            case .policy:
                return "/privacy-policy"
            case .product:
                return "/product/:slug"
            case .productRequest:
                return "/product-request/"
            case .products:
                return "/products/"
            case .profile:
                return "/profile"
            case .profileOrderShipment:
                return "/profile/orders/shipment/:shipmentid"
            case .profileBasic:
                return "/profile/details"
            case .profileCompany:
                return "/profile/company"
            case .profileEmails:
                return "/profile/email"
            case .profilePhones:
                return "/profile/phone"
            case .rateUs:
                return "/rate-us"
            case .referEarn:
                return "/profile/refer-earn"
            case .settings:
                return "/setting/currency"
            case .sharedCart:
                return "/shared-cart/:token"
            case .tnc:
                return "/terms-and-conditions"
            case .trackOrder:
                return "/order-tracking/:orderId"
            case .wishlist:
                return "/wishlist/"
            case .sections:
                return "/sections/:group"
            case .form:
                return "/form/:slug"
            case .cartDelivery:
                return "/cart/delivery"
            case .cartPayment:
                return "/cart/payment-info"
            case .cartReview:
                return "/cart/order-review"
            case .login:
                return "/auth/login"
            case .register:
                return "/auth/register"
            case .shippingPolicy:
                return "/shipping-policy"
            case .returnPolicy:
                return "/return-policy"
            case .orderStatus:
                return "/cart/order-status"
            case .locateUs:
                return "/locate-us"
            case .singlePageCheckout:
                return "/cart/checkout"
            }
        }

        public var name: String {
            switch self { 
            
            case .aboutUs:
                return "About Us"
            case .addresses:
                return "Saved Addresses"
            case .blog:
                return "Blog"
            case .brands:
                return "Brands"
            case .cards:
                return "Saved Cards"
            case .cart:
                return "Cart"
            case .categories:
                return "Categories"
            case .brand:
                return "Brand"
            case .category:
                return "Category"
            case .collection:
                return "Collection"
            case .collections:
                return "Collections"
            case .contactUs:
                return "Contact Us"
            case .external:
                return "External Link"
            case .custom:
                return "Custom theme link"
            case .faq:
                return "FAQ"
            case .freshchat:
                return "Chat by Freshchat"
            case .home:
                return "Home"
            case .notificationSettings:
                return "Notification Settings"
            case .orders:
                return "Orders"
            case .page:
                return "Page"
            case .policy:
                return "Privacy Policy"
            case .product:
                return "Product"
            case .productRequest:
                return "Product Request"
            case .products:
                return "Products"
            case .profile:
                return "Profile"
            case .profileOrderShipment:
                return "profile orders shipment"
            case .profileBasic:
                return "Basic Profile"
            case .profileCompany:
                return "Profile Company"
            case .profileEmails:
                return "Profile Emails"
            case .profilePhones:
                return "Profile Phones"
            case .rateUs:
                return "Rate Us"
            case .referEarn:
                return "Refer & Earn"
            case .settings:
                return "Settings"
            case .sharedCart:
                return "Shared Cart"
            case .tnc:
                return "Terms and Conditions"
            case .trackOrder:
                return "Track Order"
            case .wishlist:
                return "Wishlist"
            case .sections:
                return "Sections"
            case .form:
                return "Form"
            case .cartDelivery:
                return "Cart Delivery"
            case .cartPayment:
                return "Cart Payment Information"
            case .cartReview:
                return "Cart Order Review"
            case .login:
                return "Login"
            case .register:
                return "Register"
            case .shippingPolicy:
                return "Shipping policy"
            case .returnPolicy:
                return "Return policy"
            case .orderStatus:
                return "Order status"
            case .locateUs:
                return "Locate us"
            case .singlePageCheckout:
                return "Single Page Checkout"
            }
        }

        public var pathParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return [(name: "slug", required: false)]
            case .brands:
                return [(name: "department", required: false)]
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return [(name: "department", required: false)]
            case .brand:
                return [(name: "slug", required: true)]
            case .category:
                return [(name: "slug", required: true)]
            case .collection:
                return [(name: "slug", required: true)]
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return []
            case .custom:
                return []
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return [(name: "slug", required: true)]
            case .policy:
                return []
            case .product:
                return [(name: "slug", required: true)]
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return [(name: "shipmentid", required: true)]
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return [(name: "token", required: true)]
            case .tnc:
                return []
            case .trackOrder:
                return [(name: "orderId", required: false)]
            case .wishlist:
                return []
            case .sections:
                return [(name: "group", required: true)]
            case .form:
                return [(name: "slug", required: true)]
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }

        public var queryParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return []
            case .brands:
                return []
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return []
            case .brand:
                return []
            case .category:
                return []
            case .collection:
                return []
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return [(name: "url", required: true)]
            case .custom:
                return [(name: "url", required: true)]
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return []
            case .policy:
                return []
            case .product:
                return []
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return []
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return []
            case .tnc:
                return []
            case .trackOrder:
                return []
            case .wishlist:
                return []
            case .sections:
                return []
            case .form:
                return []
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }
    }
}



public extension PlatformClient.ApplicationClient.Theme {

    enum PageType: String, Codable, CaseIterable {
        
        case aboutUs = "about-us"
        case addresses = "addresses"
        case blog = "blog"
        case brands = "brands"
        case cards = "cards"
        case cart = "cart"
        case categories = "categories"
        case brand = "brand"
        case category = "category"
        case collection = "collection"
        case collections = "collections"
        case contactUs = "contact-us"
        case external = "external"
        case custom = "custom"
        case faq = "faq"
        case freshchat = "freshchat"
        case home = "home"
        case notificationSettings = "notification-settings"
        case orders = "orders"
        case page = "page"
        case policy = "policy"
        case product = "product"
        case productRequest = "product-request"
        case products = "products"
        case profile = "profile"
        case profileOrderShipment = "profile-order-shipment"
        case profileBasic = "profile-basic"
        case profileCompany = "profile-company"
        case profileEmails = "profile-emails"
        case profilePhones = "profile-phones"
        case rateUs = "rate-us"
        case referEarn = "refer-earn"
        case settings = "settings"
        case sharedCart = "shared-cart"
        case tnc = "tnc"
        case trackOrder = "track-order"
        case wishlist = "wishlist"
        case sections = "sections"
        case form = "form"
        case cartDelivery = "cart-delivery"
        case cartPayment = "cart-payment"
        case cartReview = "cart-review"
        case login = "login"
        case register = "register"
        case shippingPolicy = "shipping-policy"
        case returnPolicy = "return-policy"
        case orderStatus = "order-status"
        case locateUs = "locate-us"
        case singlePageCheckout = "single-page-checkout"

        init?(path: String) {
            let slash = CharacterSet(charactersIn: "/")
            let path = path.trimmingCharacters(in: slash)
            var allPossible: [(type: PageType, link: String)] = []
            for type in PageType.allCases {
                allPossible.append((type: type, link: type.link.trimmingCharacters(in: slash)))
                var possibleLink = type.link
                for params in type.pathParams where !params.required {
                    possibleLink = possibleLink.replacingOccurrences(of: ":\(params.name)", with: "")
                }
                possibleLink = possibleLink.replacingOccurrences(of: "//", with: "/")
                allPossible.append((type: type, link: possibleLink.trimmingCharacters(in: slash)))
            }
            allPossible = allPossible.sorted{$0.link.count > $1.link.count}
            var match = allPossible.first(where: {$0.link == path})
            for possible in allPossible {
                if match != nil {
                    break
                }
                let pathComp = path.split(separator: "/")
                let typeComp = possible.link.split(separator: "/")
                if pathComp.count == typeComp.count {
                    var paramsCount = 0
                    var matchCount = 0
                    for i in 0..<pathComp.count {
                        if typeComp[i].starts(with: ":") {
                            paramsCount += 1
                        } else if typeComp[i] == pathComp[i] {
                            matchCount += 1
                        }
                    }
                    if (paramsCount + matchCount == pathComp.count) {
                        match = possible
                    }
                }
            }
            if let bestMatch = match {
                self = bestMatch.type
            } else {
                return nil
            }
        }
        
        public var link: String {
            switch self { 
            
            case .aboutUs:
                return "/about-us"
            case .addresses:
                return "/profile/address"
            case .blog:
                return "/blog/:slug"
            case .brands:
                return "/brands/:department"
            case .cards:
                return "/profile/my-cards"
            case .cart:
                return "/cart/bag/"
            case .categories:
                return "/categories/:department"
            case .brand:
                return "/brand/:slug"
            case .category:
                return "/category/:slug"
            case .collection:
                return "/collection/:slug"
            case .collections:
                return "/collections/"
            case .contactUs:
                return "/contact-us/"
            case .external:
                return "/external/"
            case .custom:
                return "/c/"
            case .faq:
                return "/faq"
            case .freshchat:
                return "/freshchat"
            case .home:
                return "/"
            case .notificationSettings:
                return "/notification-settings"
            case .orders:
                return "/profile/orders"
            case .page:
                return "/page/:slug"
            case .policy:
                return "/privacy-policy"
            case .product:
                return "/product/:slug"
            case .productRequest:
                return "/product-request/"
            case .products:
                return "/products/"
            case .profile:
                return "/profile"
            case .profileOrderShipment:
                return "/profile/orders/shipment/:shipmentid"
            case .profileBasic:
                return "/profile/details"
            case .profileCompany:
                return "/profile/company"
            case .profileEmails:
                return "/profile/email"
            case .profilePhones:
                return "/profile/phone"
            case .rateUs:
                return "/rate-us"
            case .referEarn:
                return "/profile/refer-earn"
            case .settings:
                return "/setting/currency"
            case .sharedCart:
                return "/shared-cart/:token"
            case .tnc:
                return "/terms-and-conditions"
            case .trackOrder:
                return "/order-tracking/:orderId"
            case .wishlist:
                return "/wishlist/"
            case .sections:
                return "/sections/:group"
            case .form:
                return "/form/:slug"
            case .cartDelivery:
                return "/cart/delivery"
            case .cartPayment:
                return "/cart/payment-info"
            case .cartReview:
                return "/cart/order-review"
            case .login:
                return "/auth/login"
            case .register:
                return "/auth/register"
            case .shippingPolicy:
                return "/shipping-policy"
            case .returnPolicy:
                return "/return-policy"
            case .orderStatus:
                return "/cart/order-status"
            case .locateUs:
                return "/locate-us"
            case .singlePageCheckout:
                return "/cart/checkout"
            }
        }

        public var name: String {
            switch self { 
            
            case .aboutUs:
                return "About Us"
            case .addresses:
                return "Saved Addresses"
            case .blog:
                return "Blog"
            case .brands:
                return "Brands"
            case .cards:
                return "Saved Cards"
            case .cart:
                return "Cart"
            case .categories:
                return "Categories"
            case .brand:
                return "Brand"
            case .category:
                return "Category"
            case .collection:
                return "Collection"
            case .collections:
                return "Collections"
            case .contactUs:
                return "Contact Us"
            case .external:
                return "External Link"
            case .custom:
                return "Custom theme link"
            case .faq:
                return "FAQ"
            case .freshchat:
                return "Chat by Freshchat"
            case .home:
                return "Home"
            case .notificationSettings:
                return "Notification Settings"
            case .orders:
                return "Orders"
            case .page:
                return "Page"
            case .policy:
                return "Privacy Policy"
            case .product:
                return "Product"
            case .productRequest:
                return "Product Request"
            case .products:
                return "Products"
            case .profile:
                return "Profile"
            case .profileOrderShipment:
                return "profile orders shipment"
            case .profileBasic:
                return "Basic Profile"
            case .profileCompany:
                return "Profile Company"
            case .profileEmails:
                return "Profile Emails"
            case .profilePhones:
                return "Profile Phones"
            case .rateUs:
                return "Rate Us"
            case .referEarn:
                return "Refer & Earn"
            case .settings:
                return "Settings"
            case .sharedCart:
                return "Shared Cart"
            case .tnc:
                return "Terms and Conditions"
            case .trackOrder:
                return "Track Order"
            case .wishlist:
                return "Wishlist"
            case .sections:
                return "Sections"
            case .form:
                return "Form"
            case .cartDelivery:
                return "Cart Delivery"
            case .cartPayment:
                return "Cart Payment Information"
            case .cartReview:
                return "Cart Order Review"
            case .login:
                return "Login"
            case .register:
                return "Register"
            case .shippingPolicy:
                return "Shipping policy"
            case .returnPolicy:
                return "Return policy"
            case .orderStatus:
                return "Order status"
            case .locateUs:
                return "Locate us"
            case .singlePageCheckout:
                return "Single Page Checkout"
            }
        }

        public var pathParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return [(name: "slug", required: false)]
            case .brands:
                return [(name: "department", required: false)]
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return [(name: "department", required: false)]
            case .brand:
                return [(name: "slug", required: true)]
            case .category:
                return [(name: "slug", required: true)]
            case .collection:
                return [(name: "slug", required: true)]
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return []
            case .custom:
                return []
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return [(name: "slug", required: true)]
            case .policy:
                return []
            case .product:
                return [(name: "slug", required: true)]
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return [(name: "shipmentid", required: true)]
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return [(name: "token", required: true)]
            case .tnc:
                return []
            case .trackOrder:
                return [(name: "orderId", required: false)]
            case .wishlist:
                return []
            case .sections:
                return [(name: "group", required: true)]
            case .form:
                return [(name: "slug", required: true)]
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }

        public var queryParams: [(name: String, required: Bool)] {
            switch self { 
            
            case .aboutUs:
                return []
            case .addresses:
                return []
            case .blog:
                return []
            case .brands:
                return []
            case .cards:
                return []
            case .cart:
                return []
            case .categories:
                return []
            case .brand:
                return []
            case .category:
                return []
            case .collection:
                return []
            case .collections:
                return []
            case .contactUs:
                return []
            case .external:
                return [(name: "url", required: true)]
            case .custom:
                return [(name: "url", required: true)]
            case .faq:
                return []
            case .freshchat:
                return []
            case .home:
                return []
            case .notificationSettings:
                return []
            case .orders:
                return []
            case .page:
                return []
            case .policy:
                return []
            case .product:
                return []
            case .productRequest:
                return []
            case .products:
                return []
            case .profile:
                return []
            case .profileOrderShipment:
                return []
            case .profileBasic:
                return []
            case .profileCompany:
                return []
            case .profileEmails:
                return []
            case .profilePhones:
                return []
            case .rateUs:
                return []
            case .referEarn:
                return []
            case .settings:
                return []
            case .sharedCart:
                return []
            case .tnc:
                return []
            case .trackOrder:
                return []
            case .wishlist:
                return []
            case .sections:
                return []
            case .form:
                return []
            case .cartDelivery:
                return []
            case .cartPayment:
                return []
            case .cartReview:
                return []
            case .login:
                return []
            case .register:
                return []
            case .shippingPolicy:
                return []
            case .returnPolicy:
                return []
            case .orderStatus:
                return []
            case .locateUs:
                return []
            case .singlePageCheckout:
                return []
            }
        }
    }
}







