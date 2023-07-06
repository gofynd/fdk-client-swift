

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var storeId: Int

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var companyId: Int

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var sellerIdentifier: String

        public var sku: String

        public var fyndStoreId: String

        public var modifiedOn: String

        public var amountPaid: Double

        public var priceEffective: Double

        public var priceMarked: Double

        public var avlQty: Int

        public var id: String

        public var itemSize: String

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case identifier

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case sellerIdentifier = "seller_identifier"

            case sku

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case id = "_id"

            case itemSize = "item_size"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.id = id

            self.itemSize = itemSize

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var storeId: Int

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var companyId: Int

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var sellerIdentifier: String

        public var sku: String

        public var fyndStoreId: String

        public var modifiedOn: String

        public var amountPaid: Double

        public var priceEffective: Double

        public var priceMarked: Double

        public var avlQty: Int

        public var id: String

        public var itemSize: String

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case identifier

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case sellerIdentifier = "seller_identifier"

            case sku

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case id = "_id"

            case itemSize = "item_size"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.id = id

            self.itemSize = itemSize

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
