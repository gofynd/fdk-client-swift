import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionDateMeta
         Used By: Cart
     */

    class PromotionDateMeta: Codable {
        public var modifiedOn: String?

        public var createdOn: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case createdOn = "created_on"
        }

        public init(createdOn: String?, modifiedOn: String?) {
            self.modifiedOn = modifiedOn

            self.createdOn = createdOn
        }

        public func duplicate() -> PromotionDateMeta {
            let dict = self.dictionary!
            let copy = PromotionDateMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(modifiedOn, forKey: .modifiedOn)

            try? container.encode(createdOn, forKey: .createdOn)
        }
    }
}
