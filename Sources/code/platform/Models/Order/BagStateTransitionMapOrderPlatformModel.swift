

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagStateTransitionMap
         Used By: Order
     */

    class BagStateTransitionMap: Codable {
        public var fynd: [String: Any]?

        public var affiliate: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case fynd

            case affiliate
        }

        public init(affiliate: [String: Any]? = nil, fynd: [String: Any]? = nil) {
            self.fynd = fynd

            self.affiliate = affiliate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fynd = try container.decode([String: Any].self, forKey: .fynd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliate = try container.decode([String: Any].self, forKey: .affiliate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fynd, forKey: .fynd)

            try? container.encodeIfPresent(affiliate, forKey: .affiliate)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagStateTransitionMap
         Used By: Order
     */

    class BagStateTransitionMap: Codable {
        public var fynd: [String: Any]?

        public var affiliate: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case fynd

            case affiliate
        }

        public init(affiliate: [String: Any]? = nil, fynd: [String: Any]? = nil) {
            self.fynd = fynd

            self.affiliate = affiliate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fynd = try container.decode([String: Any].self, forKey: .fynd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliate = try container.decode([String: Any].self, forKey: .affiliate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fynd, forKey: .fynd)

            try? container.encodeIfPresent(affiliate, forKey: .affiliate)
        }
    }
}
