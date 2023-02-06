

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var fyndStoreId: String

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var storeId: Int

        public var transferPrice: Int

        public var quantity: Int

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var modifiedOn: String

        public var id: String

        public var unitPrice: Double

        public var companyId: Int

        public var itemSize: String

        public var discount: Double

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case identifier

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case quantity

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case sku

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case id = "_id"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case itemSize = "item_size"

            case discount

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.id = id

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.itemSize = itemSize

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
        }
    }
}
