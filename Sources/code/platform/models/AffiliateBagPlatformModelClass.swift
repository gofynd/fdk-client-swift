

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: OrderManage
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var itemId: Int

        public var id: String

        public var discount: Double

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var companyId: Int

        public var avlQty: Int

        public var priceEffective: Double

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var modifiedOn: String

        public var fyndStoreId: String

        public var itemSize: String

        public var quantity: Int

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case sku

            case itemId = "item_id"

            case id = "_id"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case quantity

            case transferPrice = "transfer_price"

            case identifier

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.itemId = itemId

            self.id = id

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.avlQty = avlQty

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
