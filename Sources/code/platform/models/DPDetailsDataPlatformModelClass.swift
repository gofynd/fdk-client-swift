

import Foundation
public extension PlatformClient {
    /*
         Model: DPDetailsData
         Used By: Order
     */

    class DPDetailsData: Codable {
        public var gstTag: String?

        public var country: String?

        public var ewayBillId: String?

        public var trackUrl: String?

        public var name: String?

        public var pincode: String?

        public var id: Int?

        public var awbNo: String?

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case country

            case ewayBillId = "eway_bill_id"

            case trackUrl = "track_url"

            case name

            case pincode

            case id

            case awbNo = "awb_no"
        }

        public init(awbNo: String? = nil, country: String? = nil, ewayBillId: String? = nil, gstTag: String? = nil, id: Int? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            self.gstTag = gstTag

            self.country = country

            self.ewayBillId = ewayBillId

            self.trackUrl = trackUrl

            self.name = name

            self.pincode = pincode

            self.id = id

            self.awbNo = awbNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstTag = try container.decode(String.self, forKey: .gstTag)

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
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

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

            do {
                name = try container.decode(String.self, forKey: .name)

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
                id = try container.decode(Int.self, forKey: .id)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encode(trackUrl, forKey: .trackUrl)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)
        }
    }
}
