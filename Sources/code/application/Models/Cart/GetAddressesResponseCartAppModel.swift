

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: GetAddressesResponse
         Used By: Cart
     */
    class GetAddressesResponse: Codable {
        public var address: [Address]?

        public var piiMasking: Bool?

        public enum CodingKeys: String, CodingKey {
            case address

            case piiMasking = "pii_masking"
        }

        public init(address: [Address]? = nil, piiMasking: Bool? = nil) {
            self.address = address

            self.piiMasking = piiMasking
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address = try container.decode([Address].self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                piiMasking = try container.decode(Bool.self, forKey: .piiMasking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(piiMasking, forKey: .piiMasking)
        }
    }
}
