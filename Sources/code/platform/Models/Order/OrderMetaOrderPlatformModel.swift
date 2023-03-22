

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderMeta
         Used By: Order
     */

    class OrderMeta: Codable {
        public var staff: [String: Any]?

        public var orderingStore: Int?

        public var orderTags: [[String: Any]]?

        public var customerNote: String?

        public var currencySymbol: String?

        public var files: [[String: Any]]?

        public var orderType: String?

        public var orderChildEntities: [String]?

        public var orderPlatform: String?

        public var cartId: Int?

        public var employeeId: Int?

        public var comment: String?

        public var paymentType: String?

        public var mongoCartId: Int?

        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case staff

            case orderingStore = "ordering_store"

            case orderTags = "order_tags"

            case customerNote = "customer_note"

            case currencySymbol = "currency_symbol"

            case files

            case orderType = "order_type"

            case orderChildEntities = "order_child_entities"

            case orderPlatform = "order_platform"

            case cartId = "cart_id"

            case employeeId = "employee_id"

            case comment

            case paymentType = "payment_type"

            case mongoCartId = "mongo_cart_id"

            case extraMeta = "extra_meta"
        }

        public init(cartId: Int? = nil, comment: String? = nil, currencySymbol: String? = nil, customerNote: String? = nil, employeeId: Int? = nil, extraMeta: [String: Any]? = nil, files: [[String: Any]]? = nil, mongoCartId: Int? = nil, orderingStore: Int? = nil, orderChildEntities: [String]? = nil, orderPlatform: String? = nil, orderTags: [[String: Any]]? = nil, orderType: String? = nil, paymentType: String? = nil, staff: [String: Any]? = nil) {
            self.staff = staff

            self.orderingStore = orderingStore

            self.orderTags = orderTags

            self.customerNote = customerNote

            self.currencySymbol = currencySymbol

            self.files = files

            self.orderType = orderType

            self.orderChildEntities = orderChildEntities

            self.orderPlatform = orderPlatform

            self.cartId = cartId

            self.employeeId = employeeId

            self.comment = comment

            self.paymentType = paymentType

            self.mongoCartId = mongoCartId

            self.extraMeta = extraMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                orderTags = try container.decode([[String: Any]].self, forKey: .orderTags)

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
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

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
                orderType = try container.decode(String.self, forKey: .orderType)

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
                orderPlatform = try container.decode(String.self, forKey: .orderPlatform)

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
                employeeId = try container.decode(Int.self, forKey: .employeeId)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(orderTags, forKey: .orderTags)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(orderChildEntities, forKey: .orderChildEntities)

            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(employeeId, forKey: .employeeId)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderMeta
         Used By: Order
     */

    class OrderMeta: Codable {
        public var staff: [String: Any]?

        public var orderingStore: Int?

        public var orderTags: [[String: Any]]?

        public var customerNote: String?

        public var currencySymbol: String?

        public var files: [[String: Any]]?

        public var orderType: String?

        public var orderChildEntities: [String]?

        public var orderPlatform: String?

        public var cartId: Int?

        public var employeeId: Int?

        public var comment: String?

        public var paymentType: String?

        public var mongoCartId: Int?

        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case staff

            case orderingStore = "ordering_store"

            case orderTags = "order_tags"

            case customerNote = "customer_note"

            case currencySymbol = "currency_symbol"

            case files

            case orderType = "order_type"

            case orderChildEntities = "order_child_entities"

            case orderPlatform = "order_platform"

            case cartId = "cart_id"

            case employeeId = "employee_id"

            case comment

            case paymentType = "payment_type"

            case mongoCartId = "mongo_cart_id"

            case extraMeta = "extra_meta"
        }

        public init(cartId: Int? = nil, comment: String? = nil, currencySymbol: String? = nil, customerNote: String? = nil, employeeId: Int? = nil, extraMeta: [String: Any]? = nil, files: [[String: Any]]? = nil, mongoCartId: Int? = nil, orderingStore: Int? = nil, orderChildEntities: [String]? = nil, orderPlatform: String? = nil, orderTags: [[String: Any]]? = nil, orderType: String? = nil, paymentType: String? = nil, staff: [String: Any]? = nil) {
            self.staff = staff

            self.orderingStore = orderingStore

            self.orderTags = orderTags

            self.customerNote = customerNote

            self.currencySymbol = currencySymbol

            self.files = files

            self.orderType = orderType

            self.orderChildEntities = orderChildEntities

            self.orderPlatform = orderPlatform

            self.cartId = cartId

            self.employeeId = employeeId

            self.comment = comment

            self.paymentType = paymentType

            self.mongoCartId = mongoCartId

            self.extraMeta = extraMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                orderTags = try container.decode([[String: Any]].self, forKey: .orderTags)

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
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

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
                orderType = try container.decode(String.self, forKey: .orderType)

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
                orderPlatform = try container.decode(String.self, forKey: .orderPlatform)

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
                employeeId = try container.decode(Int.self, forKey: .employeeId)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(orderTags, forKey: .orderTags)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(orderChildEntities, forKey: .orderChildEntities)

            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(employeeId, forKey: .employeeId)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }
}
