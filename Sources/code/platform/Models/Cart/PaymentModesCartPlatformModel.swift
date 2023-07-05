

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PaymentModes
         Used By: Cart
     */

    class PaymentModes: Codable {
        public var uses: PaymentAllowValue?

        public var iins: [String]?

        public var networks: [String]?

        public var types: [String]?

        public var codes: [String]?

        public enum CodingKeys: String, CodingKey {
            case uses

            case iins

            case networks

            case types

            case codes
        }

        public init(codes: [String]? = nil, iins: [String]? = nil, networks: [String]? = nil, types: [String]? = nil, uses: PaymentAllowValue? = nil) {
            self.uses = uses

            self.iins = iins

            self.networks = networks

            self.types = types

            self.codes = codes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uses = try container.decode(PaymentAllowValue.self, forKey: .uses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                iins = try container.decode([String].self, forKey: .iins)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                networks = try container.decode([String].self, forKey: .networks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                types = try container.decode([String].self, forKey: .types)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codes = try container.decode([String].self, forKey: .codes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(iins, forKey: .iins)

            try? container.encodeIfPresent(networks, forKey: .networks)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(codes, forKey: .codes)
        }
    }
}
