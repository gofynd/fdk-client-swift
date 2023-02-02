

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var sku: String

        public var identifier: [String: Any]

        public var id: String

        public var amountPaid: Double

        public var itemId: Int

        public var itemSize: String

        public var storeId: Int

        public var companyId: Int

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public var modifiedOn: String

        public var priceEffective: Double

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case quantity

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case sku

            case identifier

            case id = "_id"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case itemSize = "item_size"

            case storeId = "store_id"

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.sku = sku

            self.identifier = identifier

            self.id = id

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.itemSize = itemSize

            self.storeId = storeId

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
