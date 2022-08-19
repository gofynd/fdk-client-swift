

import Foundation
public extension PlatformClient {
    /*
         Model: DpDetails1
         Used By: Order
     */

    class DpDetails1: Codable {
        public var dpCharges: Int

        public var dpdId: String

        public var awbNo: String?

        public var gstTag: String

        public var dpReturnCharges: Int?

        public var ewayBillId: String?

        public var name: String

        public var amountHandlingCharges: Int?

        public var trackUrl: String?

        public enum CodingKeys: String, CodingKey {
            case dpCharges = "dp_charges"

            case dpdId = "dpd_id"

            case awbNo = "awb_no"

            case gstTag = "gst_tag"

            case dpReturnCharges = "dp_return_charges"

            case ewayBillId = "eway_bill_id"

            case name

            case amountHandlingCharges = "amount_handling_charges"

            case trackUrl = "track_url"
        }

        public init(amountHandlingCharges: Int? = nil, awbNo: String? = nil, dpdId: String, dpCharges: Int, dpReturnCharges: Int? = nil, ewayBillId: String? = nil, gstTag: String, name: String, trackUrl: String? = nil) {
            self.dpCharges = dpCharges

            self.dpdId = dpdId

            self.awbNo = awbNo

            self.gstTag = gstTag

            self.dpReturnCharges = dpReturnCharges

            self.ewayBillId = ewayBillId

            self.name = name

            self.amountHandlingCharges = amountHandlingCharges

            self.trackUrl = trackUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpCharges = try container.decode(Int.self, forKey: .dpCharges)

            dpdId = try container.decode(String.self, forKey: .dpdId)

            do {
                awbNo = try container.decode(String.self, forKey: .awbNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                dpReturnCharges = try container.decode(Int.self, forKey: .dpReturnCharges)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                amountHandlingCharges = try container.decode(Int.self, forKey: .amountHandlingCharges)

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

            try? container.encodeIfPresent(dpCharges, forKey: .dpCharges)

            try? container.encodeIfPresent(dpdId, forKey: .dpdId)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(dpReturnCharges, forKey: .dpReturnCharges)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amountHandlingCharges, forKey: .amountHandlingCharges)

            try? container.encode(trackUrl, forKey: .trackUrl)
        }
    }
}
