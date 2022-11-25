

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var amountPaid: Double

        public var modifiedOn: String

        public var avlQty: Int

        public var transferPrice: Int

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var itemSize: String

        public var unitPrice: Double

        public var companyId: Int

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var quantity: Int

        public var sku: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var id: String

        public var priceMarked: Double

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case quantity

            case sku

            case discount

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case identifier

            case storeId = "store_id"

            case id = "_id"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.sku = sku

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.identifier = identifier

            self.storeId = storeId

            self.id = id

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
