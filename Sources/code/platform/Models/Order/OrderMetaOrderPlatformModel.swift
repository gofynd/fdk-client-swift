

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderMeta
         Used By: Order
     */

    class OrderMeta: Codable {
        public var billingStaffDetails: BillingStaffDetails?

        public var transactionData: TransactionData?

        public var staff: [String: Any]?

        public var currencySymbol: String?

        public var comment: String?

        public var employeeId: Int?

        public var orderingStore: Int?

        public var cartId: Int?

        public var files: [[String: Any]]?

        public var orderTags: [[String: Any]]?

        public var mongoCartId: Int?

        public var extraMeta: [String: Any]?

        public var orderPlatform: String?

        public var companyLogo: String?

        public var customerNote: String?

        public var orderType: String?

        public var paymentType: String?

        public var orderChildEntities: [String]?

        public var platformUserDetails: PlatformUserDetails?

        public enum CodingKeys: String, CodingKey {
            case billingStaffDetails = "billing_staff_details"

            case transactionData = "transaction_data"

            case staff

            case currencySymbol = "currency_symbol"

            case comment

            case employeeId = "employee_id"

            case orderingStore = "ordering_store"

            case cartId = "cart_id"

            case files

            case orderTags = "order_tags"

            case mongoCartId = "mongo_cart_id"

            case extraMeta = "extra_meta"

            case orderPlatform = "order_platform"

            case companyLogo = "company_logo"

            case customerNote = "customer_note"

            case orderType = "order_type"

            case paymentType = "payment_type"

            case orderChildEntities = "order_child_entities"

            case platformUserDetails = "platform_user_details"
        }

        public init(billingStaffDetails: BillingStaffDetails? = nil, cartId: Int? = nil, comment: String? = nil, companyLogo: String? = nil, currencySymbol: String? = nil, customerNote: String? = nil, employeeId: Int? = nil, extraMeta: [String: Any]? = nil, files: [[String: Any]]? = nil, mongoCartId: Int? = nil, orderingStore: Int? = nil, orderChildEntities: [String]? = nil, orderPlatform: String? = nil, orderTags: [[String: Any]]? = nil, orderType: String? = nil, paymentType: String? = nil, platformUserDetails: PlatformUserDetails? = nil, staff: [String: Any]? = nil, transactionData: TransactionData? = nil) {
            self.billingStaffDetails = billingStaffDetails

            self.transactionData = transactionData

            self.staff = staff

            self.currencySymbol = currencySymbol

            self.comment = comment

            self.employeeId = employeeId

            self.orderingStore = orderingStore

            self.cartId = cartId

            self.files = files

            self.orderTags = orderTags

            self.mongoCartId = mongoCartId

            self.extraMeta = extraMeta

            self.orderPlatform = orderPlatform

            self.companyLogo = companyLogo

            self.customerNote = customerNote

            self.orderType = orderType

            self.paymentType = paymentType

            self.orderChildEntities = orderChildEntities

            self.platformUserDetails = platformUserDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                billingStaffDetails = try container.decode(BillingStaffDetails.self, forKey: .billingStaffDetails)

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
                staff = try container.decode([String: Any].self, forKey: .staff)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

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
                files = try container.decode([[String: Any]].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderTags = try container.decode([[String: Any]].self, forKey: .orderTags)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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
                companyLogo = try container.decode(String.self, forKey: .companyLogo)

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
                orderType = try container.decode(String.self, forKey: .orderType)

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
                orderChildEntities = try container.decode([String].self, forKey: .orderChildEntities)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingStaffDetails, forKey: .billingStaffDetails)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(employeeId, forKey: .employeeId)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(orderTags, forKey: .orderTags)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)

            try? container.encodeIfPresent(companyLogo, forKey: .companyLogo)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(orderChildEntities, forKey: .orderChildEntities)

            try? container.encodeIfPresent(platformUserDetails, forKey: .platformUserDetails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderMeta
         Used By: Order
     */

    class OrderMeta: Codable {
        public var billingStaffDetails: BillingStaffDetails?

        public var transactionData: TransactionData?

        public var staff: [String: Any]?

        public var currencySymbol: String?

        public var comment: String?

        public var employeeId: Int?

        public var orderingStore: Int?

        public var cartId: Int?

        public var files: [[String: Any]]?

        public var orderTags: [[String: Any]]?

        public var mongoCartId: Int?

        public var extraMeta: [String: Any]?

        public var orderPlatform: String?

        public var companyLogo: String?

        public var customerNote: String?

        public var orderType: String?

        public var paymentType: String?

        public var orderChildEntities: [String]?

        public var platformUserDetails: PlatformUserDetails?

        public enum CodingKeys: String, CodingKey {
            case billingStaffDetails = "billing_staff_details"

            case transactionData = "transaction_data"

            case staff

            case currencySymbol = "currency_symbol"

            case comment

            case employeeId = "employee_id"

            case orderingStore = "ordering_store"

            case cartId = "cart_id"

            case files

            case orderTags = "order_tags"

            case mongoCartId = "mongo_cart_id"

            case extraMeta = "extra_meta"

            case orderPlatform = "order_platform"

            case companyLogo = "company_logo"

            case customerNote = "customer_note"

            case orderType = "order_type"

            case paymentType = "payment_type"

            case orderChildEntities = "order_child_entities"

            case platformUserDetails = "platform_user_details"
        }

        public init(billingStaffDetails: BillingStaffDetails? = nil, cartId: Int? = nil, comment: String? = nil, companyLogo: String? = nil, currencySymbol: String? = nil, customerNote: String? = nil, employeeId: Int? = nil, extraMeta: [String: Any]? = nil, files: [[String: Any]]? = nil, mongoCartId: Int? = nil, orderingStore: Int? = nil, orderChildEntities: [String]? = nil, orderPlatform: String? = nil, orderTags: [[String: Any]]? = nil, orderType: String? = nil, paymentType: String? = nil, platformUserDetails: PlatformUserDetails? = nil, staff: [String: Any]? = nil, transactionData: TransactionData? = nil) {
            self.billingStaffDetails = billingStaffDetails

            self.transactionData = transactionData

            self.staff = staff

            self.currencySymbol = currencySymbol

            self.comment = comment

            self.employeeId = employeeId

            self.orderingStore = orderingStore

            self.cartId = cartId

            self.files = files

            self.orderTags = orderTags

            self.mongoCartId = mongoCartId

            self.extraMeta = extraMeta

            self.orderPlatform = orderPlatform

            self.companyLogo = companyLogo

            self.customerNote = customerNote

            self.orderType = orderType

            self.paymentType = paymentType

            self.orderChildEntities = orderChildEntities

            self.platformUserDetails = platformUserDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                billingStaffDetails = try container.decode(BillingStaffDetails.self, forKey: .billingStaffDetails)

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
                staff = try container.decode([String: Any].self, forKey: .staff)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

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
                files = try container.decode([[String: Any]].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderTags = try container.decode([[String: Any]].self, forKey: .orderTags)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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
                companyLogo = try container.decode(String.self, forKey: .companyLogo)

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
                orderType = try container.decode(String.self, forKey: .orderType)

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
                orderChildEntities = try container.decode([String].self, forKey: .orderChildEntities)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingStaffDetails, forKey: .billingStaffDetails)

            try? container.encodeIfPresent(transactionData, forKey: .transactionData)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(employeeId, forKey: .employeeId)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(orderTags, forKey: .orderTags)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)

            try? container.encodeIfPresent(companyLogo, forKey: .companyLogo)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(orderChildEntities, forKey: .orderChildEntities)

            try? container.encodeIfPresent(platformUserDetails, forKey: .platformUserDetails)
        }
    }
}
