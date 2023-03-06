

import Foundation

public extension PlatformClient.Order {
    /*
         Model: DPDetailsData
         Used By: Order
     */

    class DPDetailsData: Codable {
        public var id: Int?

        public var ewayBillId: String?

        public var ewayBillNumber: Int?

        public var amountHandlingCharges: Int?

        public var country: String?

        public var pincode: String?

        public var gstTag: String?

        public var awbNo: String?

        public var dpCharges: Int?

        public var name: String?

        public var trackUrl: String?

        public var dpReturnCharges: Int?

        public enum CodingKeys: String, CodingKey {
            case id

            case ewayBillId = "eway_bill_id"

            case ewayBillNumber = "eway_bill_number"

            case amountHandlingCharges = "amount_handling_charges"

            case country

            case pincode

            case gstTag = "gst_tag"

            case awbNo = "awb_no"

            case dpCharges = "dp_charges"

            case name

            case trackUrl = "track_url"

            case dpReturnCharges = "dp_return_charges"
        }

        public init(amountHandlingCharges: Int? = nil, awbNo: String? = nil, country: String? = nil, dpCharges: Int? = nil, dpReturnCharges: Int? = nil, ewayBillId: String? = nil, ewayBillNumber: Int? = nil, gstTag: String? = nil, id: Int? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            self.id = id

            self.ewayBillId = ewayBillId

            self.ewayBillNumber = ewayBillNumber

            self.amountHandlingCharges = amountHandlingCharges

            self.country = country

            self.pincode = pincode

            self.gstTag = gstTag

            self.awbNo = awbNo

            self.dpCharges = dpCharges

            self.name = name

            self.trackUrl = trackUrl

            self.dpReturnCharges = dpReturnCharges
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
                ewayBillNumber = try container.decode(Int.self, forKey: .ewayBillNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountHandlingCharges = try container.decode(Int.self, forKey: .amountHandlingCharges)

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
                pincode = try container.decode(String.self, forKey: .pincode)

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
                awbNo = try container.decode(String.self, forKey: .awbNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpCharges = try container.decode(Int.self, forKey: .dpCharges)

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

            do {
                dpReturnCharges = try container.decode(Int.self, forKey: .dpReturnCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encode(ewayBillNumber, forKey: .ewayBillNumber)

            try? container.encodeIfPresent(amountHandlingCharges, forKey: .amountHandlingCharges)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(dpCharges, forKey: .dpCharges)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(trackUrl, forKey: .trackUrl)

            try? container.encodeIfPresent(dpReturnCharges, forKey: .dpReturnCharges)
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

        public var ewayBillNumber: Int?

        public var amountHandlingCharges: Int?

        public var country: String?

        public var pincode: String?

        public var gstTag: String?

        public var awbNo: String?

        public var dpCharges: Int?

        public var name: String?

        public var trackUrl: String?

        public var dpReturnCharges: Int?

        public enum CodingKeys: String, CodingKey {
            case id

            case ewayBillId = "eway_bill_id"

            case ewayBillNumber = "eway_bill_number"

            case amountHandlingCharges = "amount_handling_charges"

            case country

            case pincode

            case gstTag = "gst_tag"

            case awbNo = "awb_no"

            case dpCharges = "dp_charges"

            case name

            case trackUrl = "track_url"

            case dpReturnCharges = "dp_return_charges"
        }

        public init(amountHandlingCharges: Int? = nil, awbNo: String? = nil, country: String? = nil, dpCharges: Int? = nil, dpReturnCharges: Int? = nil, ewayBillId: String? = nil, ewayBillNumber: Int? = nil, gstTag: String? = nil, id: Int? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            self.id = id

            self.ewayBillId = ewayBillId

            self.ewayBillNumber = ewayBillNumber

            self.amountHandlingCharges = amountHandlingCharges

            self.country = country

            self.pincode = pincode

            self.gstTag = gstTag

            self.awbNo = awbNo

            self.dpCharges = dpCharges

            self.name = name

            self.trackUrl = trackUrl

            self.dpReturnCharges = dpReturnCharges
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
                ewayBillNumber = try container.decode(Int.self, forKey: .ewayBillNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountHandlingCharges = try container.decode(Int.self, forKey: .amountHandlingCharges)

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
                pincode = try container.decode(String.self, forKey: .pincode)

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
                awbNo = try container.decode(String.self, forKey: .awbNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpCharges = try container.decode(Int.self, forKey: .dpCharges)

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

            do {
                dpReturnCharges = try container.decode(Int.self, forKey: .dpReturnCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encode(ewayBillNumber, forKey: .ewayBillNumber)

            try? container.encodeIfPresent(amountHandlingCharges, forKey: .amountHandlingCharges)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(dpCharges, forKey: .dpCharges)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(trackUrl, forKey: .trackUrl)

            try? container.encodeIfPresent(dpReturnCharges, forKey: .dpReturnCharges)
        }
    }
}
