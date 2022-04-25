

import Foundation
public extension ApplicationClient {
    /*
         Model: GetTatProductReqBody
         Used By: Logistic
     */
    class GetTatProductReqBody: Codable {
        public var locationDetails: [LocationDetailsReq]

        public var toPincode: String

        public var action: String?

        public enum CodingKeys: String, CodingKey {
            case locationDetails = "location_details"

            case toPincode = "to_pincode"

            case action
        }

        public init(action: String? = nil, locationDetails: [LocationDetailsReq], toPincode: String) {
            self.locationDetails = locationDetails

            self.toPincode = toPincode

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            locationDetails = try container.decode([LocationDetailsReq].self, forKey: .locationDetails)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
