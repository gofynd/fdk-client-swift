

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AttributeMasterMeta
         Used By: Catalog
     */

    class AttributeMasterMeta: Codable {
        public var mandatoryDetails: AttributeMasterMandatoryDetails

        public var enriched: Bool?

        public enum CodingKeys: String, CodingKey {
            case mandatoryDetails = "mandatory_details"

            case enriched
        }

        public init(enriched: Bool? = nil, mandatoryDetails: AttributeMasterMandatoryDetails) {
            self.mandatoryDetails = mandatoryDetails

            self.enriched = enriched
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mandatoryDetails = try container.decode(AttributeMasterMandatoryDetails.self, forKey: .mandatoryDetails)

            do {
                enriched = try container.decode(Bool.self, forKey: .enriched)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mandatoryDetails, forKey: .mandatoryDetails)

            try? container.encodeIfPresent(enriched, forKey: .enriched)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AttributeMasterMeta
         Used By: Catalog
     */

    class AttributeMasterMeta: Codable {
        public var mandatoryDetails: AttributeMasterMandatoryDetails

        public var enriched: Bool?

        public enum CodingKeys: String, CodingKey {
            case mandatoryDetails = "mandatory_details"

            case enriched
        }

        public init(enriched: Bool? = nil, mandatoryDetails: AttributeMasterMandatoryDetails) {
            self.mandatoryDetails = mandatoryDetails

            self.enriched = enriched
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mandatoryDetails = try container.decode(AttributeMasterMandatoryDetails.self, forKey: .mandatoryDetails)

            do {
                enriched = try container.decode(Bool.self, forKey: .enriched)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mandatoryDetails, forKey: .mandatoryDetails)

            try? container.encodeIfPresent(enriched, forKey: .enriched)
        }
    }
}
