

import Foundation
public extension PlatformClient {
    /*
         Model: GenerateBulkPackageLabel
         Used By: OrderInvoiceEngine
     */

    class GenerateBulkPackageLabel: Codable {
        public var stockTransferId: String

        public var labelType: String

        public var uid: String

        public var sellerName: String

        public var templateId: Double

        public var itemDetails: [PackageItemDetails]

        public enum CodingKeys: String, CodingKey {
            case stockTransferId = "stock_transfer_id"

            case labelType = "label_type"

            case uid

            case sellerName = "seller_name"

            case templateId = "template_id"

            case itemDetails = "item_details"
        }

        public init(itemDetails: [PackageItemDetails], labelType: String, sellerName: String, stockTransferId: String, templateId: Double, uid: String) {
            self.stockTransferId = stockTransferId

            self.labelType = labelType

            self.uid = uid

            self.sellerName = sellerName

            self.templateId = templateId

            self.itemDetails = itemDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stockTransferId = try container.decode(String.self, forKey: .stockTransferId)

            labelType = try container.decode(String.self, forKey: .labelType)

            uid = try container.decode(String.self, forKey: .uid)

            sellerName = try container.decode(String.self, forKey: .sellerName)

            templateId = try container.decode(Double.self, forKey: .templateId)

            itemDetails = try container.decode([PackageItemDetails].self, forKey: .itemDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stockTransferId, forKey: .stockTransferId)

            try? container.encodeIfPresent(labelType, forKey: .labelType)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(sellerName, forKey: .sellerName)

            try? container.encodeIfPresent(templateId, forKey: .templateId)

            try? container.encodeIfPresent(itemDetails, forKey: .itemDetails)
        }
    }
}
