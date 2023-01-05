

import Foundation
public extension PlatformClient {
    /*
         Model: AdditionalContactDetails
         Used By: Order
     */

    class AdditionalContactDetails: Codable {
        public var number: [String]?

        public enum CodingKeys: String, CodingKey {
            case number
        }

        public init(number: [String]? = nil) {
            self.number = number
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                number = try container.decode([String].self, forKey: .number)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(number, forKey: .number)
        }
    }
}
