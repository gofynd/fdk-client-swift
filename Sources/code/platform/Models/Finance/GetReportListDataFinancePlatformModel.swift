

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetReportListData
         Used By: Finance
     */

    class GetReportListData: Codable {
        public var listingEnabled: Bool?

        public var roleName: String?

        public enum CodingKeys: String, CodingKey {
            case listingEnabled = "listing_enabled"

            case roleName = "role_name"
        }

        public init(listingEnabled: Bool? = nil, roleName: String? = nil) {
            self.listingEnabled = listingEnabled

            self.roleName = roleName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                listingEnabled = try container.decode(Bool.self, forKey: .listingEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                roleName = try container.decode(String.self, forKey: .roleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(listingEnabled, forKey: .listingEnabled)

            try? container.encodeIfPresent(roleName, forKey: .roleName)
        }
    }
}
