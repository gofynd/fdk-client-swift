

import Foundation
public extension PlatformClient {
    /*
         Model: OrderMeta
         Used By: Order
     */

    class OrderMeta: Codable {
        public var orderingStore: Int?

        public var paymentType: String?

        public var files: [String]?

        public var orderPlatform: String

        public var comment: String?

        public var employeeId: String?

        public var orderType: String

        public var extraMeta: [String: Any]?

        public var mongoCartId: [String: Any]

        public var orderChildEntities: [String]?

        public var staff: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case orderingStore = "ordering_store"

            case paymentType = "payment_type"

            case files

            case orderPlatform = "order_platform"

            case comment

            case employeeId = "employee_id"

            case orderType = "order_type"

            case extraMeta = "extra_meta"

            case mongoCartId = "mongo_cart_id"

            case orderChildEntities = "order_child_entities"

            case staff
        }

        public init(comment: String? = nil, employeeId: String? = nil, extraMeta: [String: Any]? = nil, files: [String]? = nil, mongoCartId: [String: Any], orderingStore: Int? = nil, orderChildEntities: [String]? = nil, orderPlatform: String, orderType: String, paymentType: String? = nil, staff: [String: Any]? = nil) {
            self.orderingStore = orderingStore

            self.paymentType = paymentType

            self.files = files

            self.orderPlatform = orderPlatform

            self.comment = comment

            self.employeeId = employeeId

            self.orderType = orderType

            self.extraMeta = extraMeta

            self.mongoCartId = mongoCartId

            self.orderChildEntities = orderChildEntities

            self.staff = staff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

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
                files = try container.decode([String].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderPlatform = try container.decode(String.self, forKey: .orderPlatform)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeId = try container.decode(String.self, forKey: .employeeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            do {
                orderChildEntities = try container.decode([String].self, forKey: .orderChildEntities)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encode(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(employeeId, forKey: .employeeId)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(orderChildEntities, forKey: .orderChildEntities)

            try? container.encodeIfPresent(staff, forKey: .staff)
        }
    }
}
