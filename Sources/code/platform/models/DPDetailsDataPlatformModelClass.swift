

import Foundation
public extension PlatformClient {
    /*
         Model: DPDetailsData
         Used By: Order
     */

    class DPDetailsData: Codable {
        public var trackUrl: String?

        public var country: String?

        public var gstTag: String?

        public var pincode: String?

        public var awbNo: String?

        public var ewayBillId: String?

        public var id: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case trackUrl = "track_url"

            case country

            case gstTag = "gst_tag"

            case pincode

            case awbNo = "awb_no"

            case ewayBillId = "eway_bill_id"

            case id

            case name
        }

        public init(awbNo: String? = nil, country: String? = nil, ewayBillId: String? = nil, gstTag: String? = nil, id: String? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            self.trackUrl = trackUrl

            self.country = country

            self.gstTag = gstTag

            self.pincode = pincode

            self.awbNo = awbNo

            self.ewayBillId = ewayBillId

            self.id = id

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trackUrl = try container.decode(String.self, forKey: .trackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstTag = try container.decode(String.self, forKey: .gstTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(String.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                awbNo = try container.decode(String.self, forKey: .awbNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackUrl, forKey: .trackUrl)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
