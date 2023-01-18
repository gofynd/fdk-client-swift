

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var id: String

        public var unitPrice: Double

        public var itemId: Int

        public var storeId: Int

        public var modifiedOn: String

        public var avlQty: Int

        public var hsnCodeId: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var companyId: Int

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var sku: String

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case sku

            case priceMarked = "price_marked"

            case identifier

            case quantity

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.sku = sku

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
