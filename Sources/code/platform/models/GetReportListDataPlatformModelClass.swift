

import Foundation
public extension PlatformClient {
    /*
         Model: GetReportListData
         Used By: Finance
     */

    class GetReportListData: Codable {
        public var roleName: String?

        public var listingEnabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case roleName = "role_name"

            case listingEnabled = "listing_enabled"
        }

        public init(listingEnabled: Bool? = nil, roleName: String? = nil) {
            self.roleName = roleName

            self.listingEnabled = listingEnabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                roleName = try container.decode(String.self, forKey: .roleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                listingEnabled = try container.decode(Bool.self, forKey: .listingEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(roleName, forKey: .roleName)

            try? container.encodeIfPresent(listingEnabled, forKey: .listingEnabled)
        }
    }
}
