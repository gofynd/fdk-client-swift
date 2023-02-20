

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var storeId: Int

        public var amountPaid: Double

        public var id: String

        public var transferPrice: Int

        public var priceEffective: Double

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var hsnCodeId: String

        public var itemSize: String

        public var itemId: Int

        public var companyId: Int

        public var quantity: Int

        public var fyndStoreId: String

        public var sku: String

        public var discount: Double

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case id = "_id"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case identifier

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case itemId = "item_id"

            case companyId = "company_id"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case sku

            case discount

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.id = id

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.itemId = itemId

            self.companyId = companyId

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
        }
    }
}
