

import Foundation
public extension PlatformClient {
    /*
         Model: DPDetails
         Used By: Order
     */

    class DPDetails: Codable {
        public var name: String?

        public var gstTag: String?

        public var pincode: String?

        public var awbNo: String?

        public var id: String?

        public var ewayBillId: String?

        public var country: String?

        public var trackUrl: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case gstTag = "gst_tag"

            case pincode

            case awbNo = "awb_no"

            case id

            case ewayBillId = "eway_bill_id"

            case country

            case trackUrl = "track_url"
        }

        public init(awbNo: String? = nil, country: String? = nil, ewayBillId: String? = nil, gstTag: String? = nil, id: String? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            self.name = name

            self.gstTag = gstTag

            self.pincode = pincode

            self.awbNo = awbNo

            self.id = id

            self.ewayBillId = ewayBillId

            self.country = country

            self.trackUrl = trackUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                id = try container.decode(String.self, forKey: .id)

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
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackUrl = try container.decode(String.self, forKey: .trackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(trackUrl, forKey: .trackUrl)
        }
    }
}
