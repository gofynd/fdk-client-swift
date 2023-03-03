

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var priceMarked: Double

        public var modifiedOn: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public var id: String

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var storeId: Int

        public var transferPrice: Int

        public var sku: String

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var itemSize: String

        public var itemId: Int

        public var companyId: Int

        public var quantity: Int

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case discount

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case identifier

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case sku

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case itemId = "item_id"

            case companyId = "company_id"

            case quantity

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.discount = discount

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.itemId = itemId

            self.companyId = companyId

            self.quantity = quantity

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
