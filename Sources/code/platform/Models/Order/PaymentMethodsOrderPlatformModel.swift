

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentMethods
         Used By: Order
     */

    class PaymentMethods: Codable {
        public var mode: String?

        public var collectBy: String?

        public var refundBy: String?

        public enum CodingKeys: String, CodingKey {
            case mode

            case collectBy = "collect_by"

            case refundBy = "refund_by"
        }

        public init(collectBy: String? = nil, mode: String? = nil, refundBy: String? = nil) {
            self.mode = mode

            self.collectBy = collectBy

            self.refundBy = refundBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collectBy = try container.decode(String.self, forKey: .collectBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundBy = try container.decode(String.self, forKey: .refundBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PaymentMethods
         Used By: Order
     */

    class PaymentMethods: Codable {
        public var mode: String?

        public var collectBy: String?

        public var refundBy: String?

        public enum CodingKeys: String, CodingKey {
            case mode

            case collectBy = "collect_by"

            case refundBy = "refund_by"
        }

        public init(collectBy: String? = nil, mode: String? = nil, refundBy: String? = nil) {
            self.mode = mode

            self.collectBy = collectBy

            self.refundBy = refundBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collectBy = try container.decode(String.self, forKey: .collectBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundBy = try container.decode(String.self, forKey: .refundBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
        }
    }
}
