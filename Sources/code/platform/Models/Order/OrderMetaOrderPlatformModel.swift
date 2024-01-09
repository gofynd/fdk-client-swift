

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderMeta
        Used By: Order
    */

    class OrderMeta: Codable {
        
        
        public var platformUserDetails: PlatformUserDetails?
        
        public var companyLogo: String?
        
        public var currencySymbol: String?
        
        public var comment: String?
        
        public var extraMeta: [String: Any]?
        
        public var files: [[String: Any]]?
        
        public var transactionData: TransactionData?
        
        public var billingStaffDetails: BillingStaffDetails?
        
        public var orderingStore: Int?
        
        public var paymentType: String?
        
        public var mongoCartId: Int?
        
        public var orderChildEntities: [String]?
        
        public var orderType: String?
        
        public var orderPlatform: String?
        
        public var employeeId: String?
        
        public var orderTags: [[String: Any]]?
        
        public var customerNote: String?
        
        public var staff: [String: Any]?
        
        public var cartId: Int?
        
        public var cartObjectId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case platformUserDetails = "platform_user_details"
            
            case companyLogo = "company_logo"
            
            case currencySymbol = "currency_symbol"
            
            case comment = "comment"
            
            case extraMeta = "extra_meta"
            
            case files = "files"
            
            case transactionData = "transaction_data"
            
            case billingStaffDetails = "billing_staff_details"
            
            case orderingStore = "ordering_store"
            
            case paymentType = "payment_type"
            
            case mongoCartId = "mongo_cart_id"
            
            case orderChildEntities = "order_child_entities"
            
            case orderType = "order_type"
            
            case orderPlatform = "order_platform"
            
            case employeeId = "employee_id"
            
            case orderTags = "order_tags"
            
            case customerNote = "customer_note"
            
            case staff = "staff"
            
            case cartId = "cart_id"
            
            case cartObjectId = "cart_object_id"
            
        }

        public init(billingStaffDetails: BillingStaffDetails? = nil, cartId: Int? = nil, cartObjectId: String? = nil, comment: String? = nil, companyLogo: String? = nil, currencySymbol: String? = nil, customerNote: String? = nil, employeeId: String? = nil, extraMeta: [String: Any]? = nil, files: [[String: Any]]? = nil, mongoCartId: Int? = nil, orderingStore: Int? = nil, orderChildEntities: [String]? = nil, orderPlatform: String? = nil, orderTags: [[String: Any]]? = nil, orderType: String? = nil, paymentType: String? = nil, platformUserDetails: PlatformUserDetails? = nil, staff: [String: Any]? = nil, transactionData: TransactionData? = nil) {
            
            self.platformUserDetails = platformUserDetails
            
            self.companyLogo = companyLogo
            
            self.currencySymbol = currencySymbol
            
            self.comment = comment
            
            self.extraMeta = extraMeta
            
            self.files = files
            
            self.transactionData = transactionData
            
            self.billingStaffDetails = billingStaffDetails
            
            self.orderingStore = orderingStore
            
            self.paymentType = paymentType
            
            self.mongoCartId = mongoCartId
            
            self.orderChildEntities = orderChildEntities
            
            self.orderType = orderType
            
            self.orderPlatform = orderPlatform
            
            self.employeeId = employeeId
            
            self.orderTags = orderTags
            
            self.customerNote = customerNote
            
            self.staff = staff
            
            self.cartId = cartId
            
            self.cartObjectId = cartObjectId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    platformUserDetails = try container.decode(PlatformUserDetails.self, forKey: .platformUserDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyLogo = try container.decode(String.self, forKey: .companyLogo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    files = try container.decode([[String: Any]].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionData = try container.decode(TransactionData.self, forKey: .transactionData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingStaffDetails = try container.decode(BillingStaffDetails.self, forKey: .billingStaffDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStore = try container.decode(Int.self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentType = try container.decode(String.self, forKey: .paymentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mongoCartId = try container.decode(Int.self, forKey: .mongoCartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderChildEntities = try container.decode([String].self, forKey: .orderChildEntities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlatform = try container.decode(String.self, forKey: .orderPlatform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    employeeId = try container.decode(String.self, forKey: .employeeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderTags = try container.decode([[String: Any]].self, forKey: .orderTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerNote = try container.decode(String.self, forKey: .customerNote)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    staff = try container.decode([String: Any].self, forKey: .staff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartObjectId = try container.decode(String.self, forKey: .cartObjectId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(platformUserDetails, forKey: .platformUserDetails)
            
            
            
            
            try? container.encode(companyLogo, forKey: .companyLogo)
            
            
            
            
            try? container.encode(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encode(comment, forKey: .comment)
            
            
            
            
            try? container.encode(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encode(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
            
            
            
            
            try? container.encodeIfPresent(billingStaffDetails, forKey: .billingStaffDetails)
            
            
            
            
            try? container.encode(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encode(paymentType, forKey: .paymentType)
            
            
            
            
            try? container.encode(mongoCartId, forKey: .mongoCartId)
            
            
            
            
            try? container.encode(orderChildEntities, forKey: .orderChildEntities)
            
            
            
            
            try? container.encode(orderType, forKey: .orderType)
            
            
            
            
            try? container.encode(orderPlatform, forKey: .orderPlatform)
            
            
            
            
            try? container.encode(employeeId, forKey: .employeeId)
            
            
            
            
            try? container.encode(orderTags, forKey: .orderTags)
            
            
            
            
            try? container.encode(customerNote, forKey: .customerNote)
            
            
            
            
            try? container.encode(staff, forKey: .staff)
            
            
            
            
            try? container.encode(cartId, forKey: .cartId)
            
            
            
            
            try? container.encode(cartObjectId, forKey: .cartObjectId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderMeta
        Used By: Order
    */

    class OrderMeta: Codable {
        
        
        public var platformUserDetails: PlatformUserDetails?
        
        public var companyLogo: String?
        
        public var currencySymbol: String?
        
        public var comment: String?
        
        public var extraMeta: [String: Any]?
        
        public var files: [[String: Any]]?
        
        public var transactionData: TransactionData?
        
        public var billingStaffDetails: BillingStaffDetails?
        
        public var orderingStore: Int?
        
        public var paymentType: String?
        
        public var mongoCartId: Int?
        
        public var orderChildEntities: [String]?
        
        public var orderType: String?
        
        public var orderPlatform: String?
        
        public var employeeId: String?
        
        public var orderTags: [[String: Any]]?
        
        public var customerNote: String?
        
        public var staff: [String: Any]?
        
        public var cartId: Int?
        
        public var cartObjectId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case platformUserDetails = "platform_user_details"
            
            case companyLogo = "company_logo"
            
            case currencySymbol = "currency_symbol"
            
            case comment = "comment"
            
            case extraMeta = "extra_meta"
            
            case files = "files"
            
            case transactionData = "transaction_data"
            
            case billingStaffDetails = "billing_staff_details"
            
            case orderingStore = "ordering_store"
            
            case paymentType = "payment_type"
            
            case mongoCartId = "mongo_cart_id"
            
            case orderChildEntities = "order_child_entities"
            
            case orderType = "order_type"
            
            case orderPlatform = "order_platform"
            
            case employeeId = "employee_id"
            
            case orderTags = "order_tags"
            
            case customerNote = "customer_note"
            
            case staff = "staff"
            
            case cartId = "cart_id"
            
            case cartObjectId = "cart_object_id"
            
        }

        public init(billingStaffDetails: BillingStaffDetails? = nil, cartId: Int? = nil, cartObjectId: String? = nil, comment: String? = nil, companyLogo: String? = nil, currencySymbol: String? = nil, customerNote: String? = nil, employeeId: String? = nil, extraMeta: [String: Any]? = nil, files: [[String: Any]]? = nil, mongoCartId: Int? = nil, orderingStore: Int? = nil, orderChildEntities: [String]? = nil, orderPlatform: String? = nil, orderTags: [[String: Any]]? = nil, orderType: String? = nil, paymentType: String? = nil, platformUserDetails: PlatformUserDetails? = nil, staff: [String: Any]? = nil, transactionData: TransactionData? = nil) {
            
            self.platformUserDetails = platformUserDetails
            
            self.companyLogo = companyLogo
            
            self.currencySymbol = currencySymbol
            
            self.comment = comment
            
            self.extraMeta = extraMeta
            
            self.files = files
            
            self.transactionData = transactionData
            
            self.billingStaffDetails = billingStaffDetails
            
            self.orderingStore = orderingStore
            
            self.paymentType = paymentType
            
            self.mongoCartId = mongoCartId
            
            self.orderChildEntities = orderChildEntities
            
            self.orderType = orderType
            
            self.orderPlatform = orderPlatform
            
            self.employeeId = employeeId
            
            self.orderTags = orderTags
            
            self.customerNote = customerNote
            
            self.staff = staff
            
            self.cartId = cartId
            
            self.cartObjectId = cartObjectId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    platformUserDetails = try container.decode(PlatformUserDetails.self, forKey: .platformUserDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyLogo = try container.decode(String.self, forKey: .companyLogo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    files = try container.decode([[String: Any]].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionData = try container.decode(TransactionData.self, forKey: .transactionData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingStaffDetails = try container.decode(BillingStaffDetails.self, forKey: .billingStaffDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStore = try container.decode(Int.self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentType = try container.decode(String.self, forKey: .paymentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mongoCartId = try container.decode(Int.self, forKey: .mongoCartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderChildEntities = try container.decode([String].self, forKey: .orderChildEntities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlatform = try container.decode(String.self, forKey: .orderPlatform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    employeeId = try container.decode(String.self, forKey: .employeeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderTags = try container.decode([[String: Any]].self, forKey: .orderTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerNote = try container.decode(String.self, forKey: .customerNote)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    staff = try container.decode([String: Any].self, forKey: .staff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartObjectId = try container.decode(String.self, forKey: .cartObjectId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(platformUserDetails, forKey: .platformUserDetails)
            
            
            
            
            try? container.encode(companyLogo, forKey: .companyLogo)
            
            
            
            
            try? container.encode(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encode(comment, forKey: .comment)
            
            
            
            
            try? container.encode(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encode(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(transactionData, forKey: .transactionData)
            
            
            
            
            try? container.encodeIfPresent(billingStaffDetails, forKey: .billingStaffDetails)
            
            
            
            
            try? container.encode(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encode(paymentType, forKey: .paymentType)
            
            
            
            
            try? container.encode(mongoCartId, forKey: .mongoCartId)
            
            
            
            
            try? container.encode(orderChildEntities, forKey: .orderChildEntities)
            
            
            
            
            try? container.encode(orderType, forKey: .orderType)
            
            
            
            
            try? container.encode(orderPlatform, forKey: .orderPlatform)
            
            
            
            
            try? container.encode(employeeId, forKey: .employeeId)
            
            
            
            
            try? container.encode(orderTags, forKey: .orderTags)
            
            
            
            
            try? container.encode(customerNote, forKey: .customerNote)
            
            
            
            
            try? container.encode(staff, forKey: .staff)
            
            
            
            
            try? container.encode(cartId, forKey: .cartId)
            
            
            
            
            try? container.encode(cartObjectId, forKey: .cartObjectId)
            
            
        }
        
    }
}


