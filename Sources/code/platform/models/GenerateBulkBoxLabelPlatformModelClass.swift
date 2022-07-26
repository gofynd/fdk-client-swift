

import Foundation
public extension PlatformClient {
    /*
         Model: GenerateBulkBoxLabel
         Used By: OrderInvoiceEngine
     */

    class GenerateBulkBoxLabel: Codable {
        public var stockTransferId: String?

        public var labelType: String?

        public var uid: String?

        public var sellerName: String?

        public var templateId: Double?

        public var boxDetails: [BoxDetails]?

        public enum CodingKeys: String, CodingKey {
            case stockTransferId = "stock_transfer_id"

            case labelType = "label_type"

            case uid

            case sellerName = "seller_name"

            case templateId = "template_id"

            case boxDetails = "box_details"
        }

        public init(boxDetails: [BoxDetails]? = nil, labelType: String? = nil, sellerName: String? = nil, stockTransferId: String? = nil, templateId: Double? = nil, uid: String? = nil) {
            self.stockTransferId = stockTransferId

            self.labelType = labelType

            self.uid = uid

            self.sellerName = sellerName

            self.templateId = templateId

            self.boxDetails = boxDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stockTransferId = try container.decode(String.self, forKey: .stockTransferId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                labelType = try container.decode(String.self, forKey: .labelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerName = try container.decode(String.self, forKey: .sellerName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateId = try container.decode(Double.self, forKey: .templateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                boxDetails = try container.decode([BoxDetails].self, forKey: .boxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stockTransferId, forKey: .stockTransferId)

            try? container.encodeIfPresent(labelType, forKey: .labelType)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(sellerName, forKey: .sellerName)

            try? container.encodeIfPresent(templateId, forKey: .templateId)

            try? container.encodeIfPresent(boxDetails, forKey: .boxDetails)
        }
    }
}
