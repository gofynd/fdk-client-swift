

import Foundation
public extension PlatformClient {
    /*
         Model: DpDetails1
         Used By: Order
     */

    class DpDetails1: Codable {
        public var awbNo: String?

        public var name: String

        public var dpCharges: Int

        public var amountHandlingCharges: Int?

        public var dpReturnCharges: Int?

        public var gstTag: String

        public var ewayBillId: String?

        public var trackUrl: String?

        public var dpdId: String

        public enum CodingKeys: String, CodingKey {
            case awbNo = "awb_no"

            case name

            case dpCharges = "dp_charges"

            case amountHandlingCharges = "amount_handling_charges"

            case dpReturnCharges = "dp_return_charges"

            case gstTag = "gst_tag"

            case ewayBillId = "eway_bill_id"

            case trackUrl = "track_url"

            case dpdId = "dpd_id"
        }

        public init(amountHandlingCharges: Int? = nil, awbNo: String? = nil, dpdId: String, dpCharges: Int, dpReturnCharges: Int? = nil, ewayBillId: String? = nil, gstTag: String, name: String, trackUrl: String? = nil) {
            self.awbNo = awbNo

            self.name = name

            self.dpCharges = dpCharges

            self.amountHandlingCharges = amountHandlingCharges

            self.dpReturnCharges = dpReturnCharges

            self.gstTag = gstTag

            self.ewayBillId = ewayBillId

            self.trackUrl = trackUrl

            self.dpdId = dpdId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                awbNo = try container.decode(String.self, forKey: .awbNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

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

            gstTag = try container.decode(String.self, forKey: .gstTag)

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

            dpdId = try container.decode(String.self, forKey: .dpdId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(dpCharges, forKey: .dpCharges)

            try? container.encodeIfPresent(amountHandlingCharges, forKey: .amountHandlingCharges)

            try? container.encodeIfPresent(dpReturnCharges, forKey: .dpReturnCharges)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encode(trackUrl, forKey: .trackUrl)

            try? container.encodeIfPresent(dpdId, forKey: .dpdId)
        }
    }
}
