

import Foundation

public extension PlatformClient.Order {
    /*
         Model: DPDetailsData
         Used By: Order
     */

    class DPDetailsData: Codable {
        public var id: Int?

        public var ewayBillId: String?

        public var gstTag: String?

        public var pincode: String?

        public var country: String?

        public var awbNo: String?

        public var name: String?

        public var trackUrl: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case ewayBillId = "eway_bill_id"

            case gstTag = "gst_tag"

            case pincode

            case country

            case awbNo = "awb_no"

            case name

            case trackUrl = "track_url"
        }

        public init(awbNo: String? = nil, country: String? = nil, ewayBillId: String? = nil, gstTag: String? = nil, id: Int? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            self.id = id

            self.ewayBillId = ewayBillId

            self.gstTag = gstTag

            self.pincode = pincode

            self.country = country

            self.awbNo = awbNo

            self.name = name

            self.trackUrl = trackUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

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
                country = try container.decode(String.self, forKey: .country)

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
                name = try container.decode(String.self, forKey: .name)

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

            try? container.encode(id, forKey: .id)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(awbNo, forKey: .awbNo)

            try? container.encode(name, forKey: .name)

            try? container.encode(trackUrl, forKey: .trackUrl)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: DPDetailsData
         Used By: Order
     */

    class DPDetailsData: Codable {
        public var id: Int?

        public var ewayBillId: String?

        public var gstTag: String?

        public var pincode: String?

        public var country: String?

        public var awbNo: String?

        public var name: String?

        public var trackUrl: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case ewayBillId = "eway_bill_id"

            case gstTag = "gst_tag"

            case pincode

            case country

            case awbNo = "awb_no"

            case name

            case trackUrl = "track_url"
        }

        public init(awbNo: String? = nil, country: String? = nil, ewayBillId: String? = nil, gstTag: String? = nil, id: Int? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            self.id = id

            self.ewayBillId = ewayBillId

            self.gstTag = gstTag

            self.pincode = pincode

            self.country = country

            self.awbNo = awbNo

            self.name = name

            self.trackUrl = trackUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

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
                country = try container.decode(String.self, forKey: .country)

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
                name = try container.decode(String.self, forKey: .name)

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

            try? container.encode(id, forKey: .id)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(awbNo, forKey: .awbNo)

            try? container.encode(name, forKey: .name)

            try? container.encode(trackUrl, forKey: .trackUrl)
        }
    }
}
