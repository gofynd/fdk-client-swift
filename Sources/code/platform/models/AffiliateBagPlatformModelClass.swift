

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var itemSize: String

        public var discount: Double

        public var avlQty: Int

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var id: String

        public var amountPaid: Double

        public var hsnCodeId: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var quantity: Int

        public var unitPrice: Double

        public var fyndStoreId: String

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var storeId: Int

        public var sellerIdentifier: String

        public var companyId: Int

        public var sku: String

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case discount

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case identifier

            case priceMarked = "price_marked"

            case quantity

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case sku

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.discount = discount

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.sku = sku

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
        }
    }
}
