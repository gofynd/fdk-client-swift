

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: OrderManage
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var sku: String

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var storeId: Int

        public var companyId: Int

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var amountPaid: Double

        public var priceMarked: Double

        public var discount: Double

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var itemSize: String

        public var identifier: [String: Any]

        public var fyndStoreId: String

        public var itemId: Int

        public var affiliateStoreId: String

        public var quantity: Int

        public var id: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case sku

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case discount

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case itemSize = "item_size"

            case identifier

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case id = "_id"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.discount = discount

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.itemSize = itemSize

            self.identifier = identifier

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.id = id

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
