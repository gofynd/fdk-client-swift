

import Foundation
public extension PlatformClient {
    /*
         Model: DpDetails1
         Used By: Order
     */

    class DpDetails1: Codable {
        public var dpdId: String

        public var dpReturnCharges: Int?

        public var amountHandlingCharges: Int?

        public var name: String

        public var gstTag: String

        public var trackUrl: String?

        public var dpCharges: Int

        public var ewayBillId: String?

        public var awbNo: String?

        public enum CodingKeys: String, CodingKey {
            case dpdId = "dpd_id"

            case dpReturnCharges = "dp_return_charges"

            case amountHandlingCharges = "amount_handling_charges"

            case name

            case gstTag = "gst_tag"

            case trackUrl = "track_url"

            case dpCharges = "dp_charges"

            case ewayBillId = "eway_bill_id"

            case awbNo = "awb_no"
        }

        public init(amountHandlingCharges: Int? = nil, awbNo: String? = nil, dpdId: String, dpCharges: Int, dpReturnCharges: Int? = nil, ewayBillId: String? = nil, gstTag: String, name: String, trackUrl: String? = nil) {
            self.dpdId = dpdId

            self.dpReturnCharges = dpReturnCharges

            self.amountHandlingCharges = amountHandlingCharges

            self.name = name

            self.gstTag = gstTag

            self.trackUrl = trackUrl

            self.dpCharges = dpCharges

            self.ewayBillId = ewayBillId

            self.awbNo = awbNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpdId = try container.decode(String.self, forKey: .dpdId)

            do {
                dpReturnCharges = try container.decode(Int.self, forKey: .dpReturnCharges)

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

            name = try container.decode(String.self, forKey: .name)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                trackUrl = try container.decode(String.self, forKey: .trackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpCharges = try container.decode(Int.self, forKey: .dpCharges)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpdId, forKey: .dpdId)

            try? container.encodeIfPresent(dpReturnCharges, forKey: .dpReturnCharges)

            try? container.encodeIfPresent(amountHandlingCharges, forKey: .amountHandlingCharges)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encode(trackUrl, forKey: .trackUrl)

            try? container.encodeIfPresent(dpCharges, forKey: .dpCharges)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)
        }
    }
}
