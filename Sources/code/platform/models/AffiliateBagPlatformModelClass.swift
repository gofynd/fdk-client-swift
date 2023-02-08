

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var amountPaid: Double

        public var avlQty: Int

        public var discount: Double

        public var unitPrice: Double

        public var transferPrice: Int

        public var priceMarked: Double

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var itemSize: String

        public var sku: String

        public var hsnCodeId: String

        public var storeId: Int

        public var id: String

        public var modifiedOn: String

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var quantity: Int

        public var companyId: Int

        public var sellerIdentifier: String

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case discount

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case sku

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case id = "_id"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.discount = discount

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.id = id

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
        }
    }
}
