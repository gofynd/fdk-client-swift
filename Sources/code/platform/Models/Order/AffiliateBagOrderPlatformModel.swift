

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var companyId: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var id: String

        public var priceEffective: Double

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var discount: Double

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var sku: String

        public var modifiedOn: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case discount

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case sku

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
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

        public var avlQty: Int

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var companyId: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var id: String

        public var priceEffective: Double

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var discount: Double

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var sku: String

        public var modifiedOn: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case discount

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case sku

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}
