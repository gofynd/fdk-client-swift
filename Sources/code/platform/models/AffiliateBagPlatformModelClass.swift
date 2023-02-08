

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var transferPrice: Int

        public var sku: String

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var quantity: Int

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var avlQty: Int

        public var affiliateStoreId: String

        public var id: String

        public var fyndStoreId: String

        public var modifiedOn: String

        public var discount: Double

        public var storeId: Int

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var itemId: Int

        public var companyId: Int

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case sku

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case discount

            case storeId = "store_id"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case itemId = "item_id"

            case companyId = "company_id"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.sku = sku

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.storeId = storeId

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.itemId = itemId

            self.companyId = companyId

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
