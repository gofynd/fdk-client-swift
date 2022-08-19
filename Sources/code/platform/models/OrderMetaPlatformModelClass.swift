

import Foundation
public extension PlatformClient {
    /*
         Model: OrderMeta
         Used By: Order
     */

    class OrderMeta: Codable {
        public var orderType: String

        public var comment: String?

        public var staff: [String: Any]?

        public var mongoCartId: [String: Any]

        public var orderChildEntities: [String]?

        public var orderPlatform: String

        public var orderingStore: Int?

        public var extraMeta: [String: Any]?

        public var paymentType: String?

        public var files: [String]?

        public var employeeId: String?

        public enum CodingKeys: String, CodingKey {
            case orderType = "order_type"

            case comment

            case staff

            case mongoCartId = "mongo_cart_id"

            case orderChildEntities = "order_child_entities"

            case orderPlatform = "order_platform"

            case orderingStore = "ordering_store"

            case extraMeta = "extra_meta"

            case paymentType = "payment_type"

            case files

            case employeeId = "employee_id"
        }

        public init(comment: String? = nil, employeeId: String? = nil, extraMeta: [String: Any]? = nil, files: [String]? = nil, mongoCartId: [String: Any], orderingStore: Int? = nil, orderChildEntities: [String]? = nil, orderPlatform: String, orderType: String, paymentType: String? = nil, staff: [String: Any]? = nil) {
            self.orderType = orderType

            self.comment = comment

            self.staff = staff

            self.mongoCartId = mongoCartId

            self.orderChildEntities = orderChildEntities

            self.orderPlatform = orderPlatform

            self.orderingStore = orderingStore

            self.extraMeta = extraMeta

            self.paymentType = paymentType

            self.files = files

            self.employeeId = employeeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            do {
                orderChildEntities = try container.decode([String].self, forKey: .orderChildEntities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderPlatform = try container.decode(String.self, forKey: .orderPlatform)

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

            do {
                employeeId = try container.decode(String.self, forKey: .employeeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(orderChildEntities, forKey: .orderChildEntities)

            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encode(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(employeeId, forKey: .employeeId)
        }
    }
}
