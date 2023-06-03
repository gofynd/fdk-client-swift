

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var collectBy: String?

        public var refundBy: String?

        public var name: String?

        public var amount: Double?

        public var meta: Meta?

        public var mode: String?

        public enum CodingKeys: String, CodingKey {
            case collectBy = "collect_by"

            case refundBy = "refund_by"

            case name

            case amount

            case meta

            case mode
        }

        public init(amount: Double? = nil, collectBy: String? = nil, meta: Meta? = nil, mode: String? = nil, name: String? = nil, refundBy: String? = nil) {
            self.collectBy = collectBy

            self.refundBy = refundBy

            self.name = name

            self.amount = amount

            self.meta = meta

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(Meta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PaymentMethod
         Used By: Order
     */

    class PaymentMethod: Codable {
        public var collectBy: String?

        public var refundBy: String?

        public var name: String?

        public var amount: Double?

        public var meta: Meta?

        public var mode: String?

        public enum CodingKeys: String, CodingKey {
            case collectBy = "collect_by"

            case refundBy = "refund_by"

            case name

            case amount

            case meta

            case mode
        }

        public init(amount: Double? = nil, collectBy: String? = nil, meta: Meta? = nil, mode: String? = nil, name: String? = nil, refundBy: String? = nil) {
            self.collectBy = collectBy

            self.refundBy = refundBy

            self.name = name

            self.amount = amount

            self.meta = meta

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(Meta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}
