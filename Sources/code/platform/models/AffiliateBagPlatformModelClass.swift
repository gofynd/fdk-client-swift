

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var priceEffective: Double

        public var id: String

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var quantity: Int

        public var identifier: [String: Any]

        public var discount: Double

        public var fyndStoreId: String

        public var itemId: Int

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var itemSize: String

        public var modifiedOn: String

        public var priceMarked: Double

        public var sku: String

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case id = "_id"

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case quantity

            case identifier

            case discount

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case sku

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.id = id

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.quantity = quantity

            self.identifier = identifier

            self.discount = discount

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.sku = sku

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
