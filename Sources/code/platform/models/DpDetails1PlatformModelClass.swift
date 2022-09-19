

import Foundation
public extension PlatformClient {
    /*
         Model: DpDetails1
         Used By: Order
     */

    class DpDetails1: Codable {
        public var ewayBillId: String?

        public var awbNo: String?

        public var name: String

        public var gstTag: String

        public var amountHandlingCharges: Int?

        public var dpReturnCharges: Int?

        public var dpdId: String

        public var trackUrl: String?

        public var dpCharges: Int

        public enum CodingKeys: String, CodingKey {
            case ewayBillId = "eway_bill_id"

            case awbNo = "awb_no"

            case name

            case gstTag = "gst_tag"

            case amountHandlingCharges = "amount_handling_charges"

            case dpReturnCharges = "dp_return_charges"

            case dpdId = "dpd_id"

            case trackUrl = "track_url"

            case dpCharges = "dp_charges"
        }

        public init(amountHandlingCharges: Int? = nil, awbNo: String? = nil, dpdId: String, dpCharges: Int, dpReturnCharges: Int? = nil, ewayBillId: String? = nil, gstTag: String, name: String, trackUrl: String? = nil) {
            self.ewayBillId = ewayBillId

            self.awbNo = awbNo

            self.name = name

            self.gstTag = gstTag

            self.amountHandlingCharges = amountHandlingCharges

            self.dpReturnCharges = dpReturnCharges

            self.dpdId = dpdId

            self.trackUrl = trackUrl

            self.dpCharges = dpCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

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

            name = try container.decode(String.self, forKey: .name)

            gstTag = try container.decode(String.self, forKey: .gstTag)

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

            dpdId = try container.decode(String.self, forKey: .dpdId)

            do {
                trackUrl = try container.decode(String.self, forKey: .trackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpCharges = try container.decode(Int.self, forKey: .dpCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountHandlingCharges, forKey: .amountHandlingCharges)

            try? container.encodeIfPresent(dpReturnCharges, forKey: .dpReturnCharges)

            try? container.encodeIfPresent(dpdId, forKey: .dpdId)

            try? container.encode(trackUrl, forKey: .trackUrl)

            try? container.encodeIfPresent(dpCharges, forKey: .dpCharges)
        }
    }
}
