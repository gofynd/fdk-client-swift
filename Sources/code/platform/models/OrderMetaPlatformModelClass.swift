

import Foundation
public extension PlatformClient {
    /*
         Model: OrderMeta
         Used By: Order
     */

    class OrderMeta: Codable {
        public var orderPlatform: String?

        public var staff: [String: Any]?

        public var files: [[String: Any]]?

        public var paymentType: String?

        public var orderingStore: Int?

        public var extraMeta: [String: Any]?

        public var orderChildEntities: [String]?

        public var orderType: String?

        public var comment: String?

        public var customerNote: String?

        public var employeeId: Int?

        public var orderTags: [[String: Any]]?

        public var mongoCartId: Int?

        public var currencySymbol: String?

        public var cartId: Int?

        public enum CodingKeys: String, CodingKey {
            case orderPlatform = "order_platform"

            case staff

            case files

            case paymentType = "payment_type"

            case orderingStore = "ordering_store"

            case extraMeta = "extra_meta"

            case orderChildEntities = "order_child_entities"

            case orderType = "order_type"

            case comment

            case customerNote = "customer_note"

            case employeeId = "employee_id"

            case orderTags = "order_tags"

            case mongoCartId = "mongo_cart_id"

            case currencySymbol = "currency_symbol"

            case cartId = "cart_id"
        }

        public init(cartId: Int? = nil, comment: String? = nil, currencySymbol: String? = nil, customerNote: String? = nil, employeeId: Int? = nil, extraMeta: [String: Any]? = nil, files: [[String: Any]]? = nil, mongoCartId: Int? = nil, orderingStore: Int? = nil, orderChildEntities: [String]? = nil, orderPlatform: String? = nil, orderTags: [[String: Any]]? = nil, orderType: String? = nil, paymentType: String? = nil, staff: [String: Any]? = nil) {
            self.orderPlatform = orderPlatform

            self.staff = staff

            self.files = files

            self.paymentType = paymentType

            self.orderingStore = orderingStore

            self.extraMeta = extraMeta

            self.orderChildEntities = orderChildEntities

            self.orderType = orderType

            self.comment = comment

            self.customerNote = customerNote

            self.employeeId = employeeId

            self.orderTags = orderTags

            self.mongoCartId = mongoCartId

            self.currencySymbol = currencySymbol

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderPlatform = try container.decode(String.self, forKey: .orderPlatform)

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
                files = try container.decode([[String: Any]].self, forKey: .files)

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
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

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
                orderChildEntities = try container.decode([String].self, forKey: .orderChildEntities)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                employeeId = try container.decode(Int.self, forKey: .employeeId)

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
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(orderChildEntities, forKey: .orderChildEntities)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(employeeId, forKey: .employeeId)

            try? container.encodeIfPresent(orderTags, forKey: .orderTags)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }
}
