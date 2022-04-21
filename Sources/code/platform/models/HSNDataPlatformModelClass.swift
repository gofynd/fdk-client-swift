

import Foundation
public extension PlatformClient {
    /*
         Model: HSNData
         Used By: Catalog
     */

    class HSNData: Codable {
        public var hsnCode: [String]?

        public var countryOfOrigin: [String]?

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case countryOfOrigin = "country_of_origin"
        }

        public init(countryOfOrigin: [String]? = nil, hsnCode: [String]? = nil) {
            self.hsnCode = hsnCode

            self.countryOfOrigin = countryOfOrigin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hsnCode = try container.decode([String].self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode([String].self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
        }
    }
}
