

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryMetricsResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryMetricsResponseSerializer: Codable {
        public var food: DocumentObject?

        public var drug: DocumentObject?

        public enum CodingKeys: String, CodingKey {
            case food

            case drug
        }

        public init(drug: DocumentObject? = nil, food: DocumentObject? = nil) {
            self.food = food

            self.drug = drug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                food = try container.decode(DocumentObject.self, forKey: .food)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                drug = try container.decode(DocumentObject.self, forKey: .drug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(food, forKey: .food)

            try? container.encodeIfPresent(drug, forKey: .drug)
        }
    }
}
