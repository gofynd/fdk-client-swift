

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var sku: String

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var companyId: Int

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var itemSize: String

        public var itemId: Int

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var quantity: Int

        public var id: String

        public var priceEffective: Double

        public var transferPrice: Int

        public var storeId: Int

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case sku

            case fyndStoreId = "fynd_store_id"

            case identifier

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case quantity

            case id = "_id"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case discount

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.id = id

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
