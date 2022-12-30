

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var affiliateStoreId: String

        public var sku: String

        public var id: String

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var hsnCodeId: String

        public var itemId: Int

        public var itemSize: String

        public var discount: Double

        public var sellerIdentifier: String

        public var avlQty: Int

        public var modifiedOn: String

        public var priceMarked: Double

        public var storeId: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public var fyndStoreId: String

        public var unitPrice: Double

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case itemSize = "item_size"

            case discount

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case identifier

            case pdfLinks = "pdf_links"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.itemSize = itemSize

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.pdfLinks = pdfLinks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
        }
    }
}
