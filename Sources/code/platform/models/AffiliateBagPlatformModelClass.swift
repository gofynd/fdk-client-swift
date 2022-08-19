

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var hsnCodeId: String

        public var modifiedOn: String

        public var unitPrice: Double

        public var discount: Double

        public var transferPrice: Int

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var id: String

        public var sku: String

        public var fyndStoreId: String

        public var priceMarked: Double

        public var avlQty: Int

        public var amountPaid: Double

        public var itemId: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case discount

            case transferPrice = "transfer_price"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case id = "_id"

            case sku

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case identifier

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.discount = discount

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.id = id

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.identifier = identifier

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}
