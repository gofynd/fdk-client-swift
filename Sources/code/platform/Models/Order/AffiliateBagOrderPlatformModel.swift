

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var amountPaid: Double

        public var companyId: Int

        public var id: String

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var avlQty: Int

        public var quantity: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var priceEffective: Double

        public var modifiedOn: String

        public var itemId: Int

        public var transferPrice: Int

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case quantity

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case deliveryCharge = "delivery_charge"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

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
        public var sku: String

        public var amountPaid: Double

        public var companyId: Int

        public var id: String

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var avlQty: Int

        public var quantity: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var priceEffective: Double

        public var modifiedOn: String

        public var itemId: Int

        public var transferPrice: Int

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case quantity

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case deliveryCharge = "delivery_charge"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
