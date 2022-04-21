

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentTrackResponseBagListItemDpDetails
         Used By: Order
     */

    class ShipmentTrackResponseBagListItemDpDetails: Codable {
        public var trackingNo: String?

        public var courier: String?

        public enum CodingKeys: String, CodingKey {
            case trackingNo = "tracking_no"

            case courier
        }

        public init(courier: String? = nil, trackingNo: String? = nil) {
            self.trackingNo = trackingNo

            self.courier = courier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trackingNo = try container.decode(String.self, forKey: .trackingNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                courier = try container.decode(String.self, forKey: .courier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackingNo, forKey: .trackingNo)

            try? container.encodeIfPresent(courier, forKey: .courier)
        }
    }
}
