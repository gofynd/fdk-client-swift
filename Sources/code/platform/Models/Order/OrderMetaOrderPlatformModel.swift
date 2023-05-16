

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderMeta
         Used By: Order
     */

    class OrderMeta: Codable {
        public var orderTags: [[String: Any]]?

        public var orderPlatform: String?

        public var comment: String?

        public var orderType: String?

        public var cartId: Int?

        public var paymentType: String?

        public var mongoCartId: Int?

        public var orderChildEntities: [String]?

        public var billingStaffDetails: BillingStaffDetails?

        public var currencySymbol: String?

        public var customerNote: String?

        public var files: [[String: Any]]?

        public var companyLogo: String?

        public var transactionData: TransactionData?

        public var employeeId: Int?

        public var extraMeta: [String: Any]?

        public var platformUserDetails: PlatformUserDetails?

        public var staff: [String: Any]?

        public var orderingStore: Int?

        public enum CodingKeys: String, CodingKey {
            case orderTags = "order_tags"

            case orderPlatform = "order_platform"

            case comment

            case orderType = "order_type"

            case cartId = "cart_id"

            case paymentType = "payment_type"

            case mongoCartId = "mongo_cart_id"

            case orderChildEntities = "order_child_entities"

            case billingStaffDetails = "billing_staff_details"

            case currencySymbol = "currency_symbol"

            case customerNote = "customer_note"

            case files

            case companyLogo = "company_logo"

            case transactionData = "transaction_data"

            case employeeId = "employee_id"

            case extraMeta = "extra_meta"

            case platformUserDetails = "platform_user_details"

            case staff

            case orderingStore = "ordering_store"
        }

        public init(billingStaffDetails: BillingStaffDetails? = nil, cartId: Int? = nil, comment: String? = nil, companyLogo: String? = nil, currencySymbol: String? = nil, customerNote: String? = nil, employeeId: Int? = nil, extraMeta: [String: Any]? = nil, files: [[String: Any]]? = nil, mongoCartId: Int? = nil, orderingStore: Int? = nil, orderChildEntities: [String]? = nil, orderPlatform: String? = nil, orderTags: [[String: Any]]? = nil, orderType: String? = nil, paymentType: String? = nil, platformUserDetails: PlatformUserDetails? = nil, staff: [String: Any]? = nil, transactionData: TransactionData? = nil) {
            self.orderTags = orderTags

            self.orderPlatform = orderPlatform

            self.comment = comment

            self.orderType = orderType

            self.cartId = cartId

            self.paymentType = paymentType

            self.mongoCartId = mongoCartId

            self.orderChildEntities = orderChildEntities

            self.billingStaffDetails = billingStaffDetails

            self.currencySymbol = currencySymbol

            self.customerNote = customerNote

            self.files = files

            self.companyLogo = companyLogo

            self.transactionData = transactionData

            self.employeeId = employeeId

            self.extraMeta = extraMeta

            self.platformUserDetails = platformUserDetails

            self.staff = staff

            self.orderingStore = orderingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderTags = try container.decode([[String: Any]].self, forKey: .orderTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderPlatform = try container.decode(String.self, forKey: .orderPlatform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderType = try container.decode(String.self, forKey: .orderType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mongoCartId = try container.decode(Int.self, forKey: .mongoCartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderChildEntities = try container.decode([String].self, forKey: .orderChildEntities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingStaffDetails = try container.decode(BillingStaffDetails.self, forKey: .billingStaffDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerNote = try container.decode(String.self, forKey: .customerNote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                files = try container.decode([[String: Any]].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyLogo = try container.decode(String.self, forKey: .companyLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transactionData = try container.decode(TransactionData.self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeId = try container.decode(Int.self, forKey: .employeeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformUserDetails = try container.decode(PlatformUserDetails.self, forKey: .platformUserDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staff = try container.decode([String: Any].self, forKey: .staff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderTags, forKey: .orderTags)

            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(orderChildEntities, forKey: .orderChildEntities)

            try? container.encodeIfPresent(billingStaffDetails, forKey: .billingStaffDetails)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(companyLogo, forKey: .companyLogo)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(employeeId, forKey: .employeeId)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(platformUserDetails, forKey: .platformUserDetails)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderMeta
         Used By: Order
     */

    class OrderMeta: Codable {
        public var orderTags: [[String: Any]]?

        public var orderPlatform: String?

        public var comment: String?

        public var orderType: String?

        public var cartId: Int?

        public var paymentType: String?

        public var mongoCartId: Int?

        public var orderChildEntities: [String]?

        public var billingStaffDetails: BillingStaffDetails?

        public var currencySymbol: String?

        public var customerNote: String?

        public var files: [[String: Any]]?

        public var companyLogo: String?

        public var transactionData: TransactionData?

        public var employeeId: Int?

        public var extraMeta: [String: Any]?

        public var platformUserDetails: PlatformUserDetails?

        public var staff: [String: Any]?

        public var orderingStore: Int?

        public enum CodingKeys: String, CodingKey {
            case orderTags = "order_tags"

            case orderPlatform = "order_platform"

            case comment

            case orderType = "order_type"

            case cartId = "cart_id"

            case paymentType = "payment_type"

            case mongoCartId = "mongo_cart_id"

            case orderChildEntities = "order_child_entities"

            case billingStaffDetails = "billing_staff_details"

            case currencySymbol = "currency_symbol"

            case customerNote = "customer_note"

            case files

            case companyLogo = "company_logo"

            case transactionData = "transaction_data"

            case employeeId = "employee_id"

            case extraMeta = "extra_meta"

            case platformUserDetails = "platform_user_details"

            case staff

            case orderingStore = "ordering_store"
        }

        public init(billingStaffDetails: BillingStaffDetails? = nil, cartId: Int? = nil, comment: String? = nil, companyLogo: String? = nil, currencySymbol: String? = nil, customerNote: String? = nil, employeeId: Int? = nil, extraMeta: [String: Any]? = nil, files: [[String: Any]]? = nil, mongoCartId: Int? = nil, orderingStore: Int? = nil, orderChildEntities: [String]? = nil, orderPlatform: String? = nil, orderTags: [[String: Any]]? = nil, orderType: String? = nil, paymentType: String? = nil, platformUserDetails: PlatformUserDetails? = nil, staff: [String: Any]? = nil, transactionData: TransactionData? = nil) {
            self.orderTags = orderTags

            self.orderPlatform = orderPlatform

            self.comment = comment

            self.orderType = orderType

            self.cartId = cartId

            self.paymentType = paymentType

            self.mongoCartId = mongoCartId

            self.orderChildEntities = orderChildEntities

            self.billingStaffDetails = billingStaffDetails

            self.currencySymbol = currencySymbol

            self.customerNote = customerNote

            self.files = files

            self.companyLogo = companyLogo

            self.transactionData = transactionData

            self.employeeId = employeeId

            self.extraMeta = extraMeta

            self.platformUserDetails = platformUserDetails

            self.staff = staff

            self.orderingStore = orderingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderTags = try container.decode([[String: Any]].self, forKey: .orderTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderPlatform = try container.decode(String.self, forKey: .orderPlatform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderType = try container.decode(String.self, forKey: .orderType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mongoCartId = try container.decode(Int.self, forKey: .mongoCartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderChildEntities = try container.decode([String].self, forKey: .orderChildEntities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingStaffDetails = try container.decode(BillingStaffDetails.self, forKey: .billingStaffDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerNote = try container.decode(String.self, forKey: .customerNote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                files = try container.decode([[String: Any]].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyLogo = try container.decode(String.self, forKey: .companyLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transactionData = try container.decode(TransactionData.self, forKey: .transactionData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeId = try container.decode(Int.self, forKey: .employeeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformUserDetails = try container.decode(PlatformUserDetails.self, forKey: .platformUserDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staff = try container.decode([String: Any].self, forKey: .staff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderTags, forKey: .orderTags)

            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(orderChildEntities, forKey: .orderChildEntities)

            try? container.encodeIfPresent(billingStaffDetails, forKey: .billingStaffDetails)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(companyLogo, forKey: .companyLogo)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(employeeId, forKey: .employeeId)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(platformUserDetails, forKey: .platformUserDetails)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
        }
    }
}
