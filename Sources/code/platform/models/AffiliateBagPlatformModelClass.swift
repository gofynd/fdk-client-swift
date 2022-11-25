

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: OrderManage
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var storeId: Int

        public var discount: Double

        public var sku: String

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var itemId: Int

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var avlQty: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public var id: String

        public var itemSize: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case storeId = "store_id"

            case discount

            case sku

            case fyndStoreId = "fynd_store_id"

            case identifier

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case id = "_id"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.storeId = storeId

            self.discount = discount

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.id = id

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
