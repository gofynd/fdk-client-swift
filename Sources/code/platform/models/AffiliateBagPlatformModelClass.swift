

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var id: String

        public var transferPrice: Int

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var fyndStoreId: String

        public var itemSize: String

        public var companyId: Int

        public var deliveryCharge: Double

        public var avlQty: Int

        public var unitPrice: Double

        public var sku: String

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var storeId: Int

        public var priceMarked: Double

        public var discount: Double

        public var amountPaid: Double

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case id = "_id"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case sku

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case priceMarked = "price_marked"

            case discount

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.id = id

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.sku = sku

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.priceMarked = priceMarked

            self.discount = discount

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
