

import Foundation
public extension PlatformClient {
    /*
         Model: DPDetails
         Used By: Order
     */

    class DPDetails: Codable {
        public var awbNo: String?

        public var dpCharges: Int

        public var amountHandlingCharges: Int?

        public var dpReturnCharges: Int?

        public var name: String

        public var trackUrl: String?

        public var ewayBillId: String?

        public var dpdId: String

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case awbNo = "awb_no"

            case dpCharges = "dp_charges"

            case amountHandlingCharges = "amount_handling_charges"

            case dpReturnCharges = "dp_return_charges"

            case name

            case trackUrl = "track_url"

            case ewayBillId = "eway_bill_id"

            case dpdId = "dpd_id"

            case gstTag = "gst_tag"
        }

        public init(amountHandlingCharges: Int? = nil, awbNo: String? = nil, dpdId: String, dpCharges: Int, dpReturnCharges: Int? = nil, ewayBillId: String? = nil, gstTag: String, name: String, trackUrl: String? = nil) {
            self.awbNo = awbNo

            self.dpCharges = dpCharges

            self.amountHandlingCharges = amountHandlingCharges

            self.dpReturnCharges = dpReturnCharges

            self.name = name

            self.trackUrl = trackUrl

            self.ewayBillId = ewayBillId

            self.dpdId = dpdId

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                awbNo = try container.decode(String.self, forKey: .awbNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpCharges = try container.decode(Int.self, forKey: .dpCharges)

            do {
                amountHandlingCharges = try container.decode(Int.self, forKey: .amountHandlingCharges)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                trackUrl = try container.decode(String.self, forKey: .trackUrl)

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

            dpdId = try container.decode(String.self, forKey: .dpdId)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(dpCharges, forKey: .dpCharges)

            try? container.encodeIfPresent(amountHandlingCharges, forKey: .amountHandlingCharges)

            try? container.encodeIfPresent(dpReturnCharges, forKey: .dpReturnCharges)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(trackUrl, forKey: .trackUrl)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(dpdId, forKey: .dpdId)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}
