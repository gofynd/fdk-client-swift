

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryMetricsResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryMetricsResponseSerializer: Codable {
        public var drug: DocumentObject?

        public var food: DocumentObject?

        public enum CodingKeys: String, CodingKey {
            case drug

            case food
        }

        public init(drug: DocumentObject? = nil, food: DocumentObject? = nil) {
            self.drug = drug

            self.food = food
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                drug = try container.decode(DocumentObject.self, forKey: .drug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                food = try container.decode(DocumentObject.self, forKey: .food)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(drug, forKey: .drug)

            try? container.encodeIfPresent(food, forKey: .food)
        }
    }
}
