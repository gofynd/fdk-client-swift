

import Foundation
public extension PlatformClient {
    /*
         Model: AttributeMasterMeta
         Used By: Catalog
     */

    class AttributeMasterMeta: Codable {
        public var enriched: Bool?

        public var mandatoryDetails: AttributeMasterMandatoryDetails

        public enum CodingKeys: String, CodingKey {
            case enriched

            case mandatoryDetails = "mandatory_details"
        }

        public init(enriched: Bool? = nil, mandatoryDetails: AttributeMasterMandatoryDetails) {
            self.enriched = enriched

            self.mandatoryDetails = mandatoryDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enriched = try container.decode(Bool.self, forKey: .enriched)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mandatoryDetails = try container.decode(AttributeMasterMandatoryDetails.self, forKey: .mandatoryDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enriched, forKey: .enriched)

            try? container.encodeIfPresent(mandatoryDetails, forKey: .mandatoryDetails)
        }
    }
}
